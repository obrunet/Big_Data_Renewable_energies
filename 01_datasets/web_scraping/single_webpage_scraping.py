""""
Scrape weather infos from a single web page of www.infoclimat.fr
data is written in a csv file, that will be use to check info from other sources
Author : Olivier Brunet
2019-11-07
Licence : GPL
"""

import re, pickle, os, csv, requests
from bs4 import BeautifulSoup
from requests.exceptions import HTTPError


PAGE_URL = "https://www.infoclimat.fr/observations-meteo/archives/2/janvier/2016/paris-montsouris/07156.html"
file_name_pickle, file_name_csv = 'scraped_page.pickle', 'scraped_data.csv'


# if the page has already been downloaded & saved
if os.path.exists(file_name_pickle):
    with open(file_name_pickle, 'rb') as f:
        print(f"Loading cached {file_name_pickle}")
        response = pickle.load(f)


# otherwise fetch it for the first time
else:
    print(f"Fetching {PAGE_URL} from the internet")
    try:
        response = requests.get(PAGE_URL)
        # If the response was successful, no Exception will be raised
        response.raise_for_status()
    except HTTPError as http_err:
        print(f'HTTP error occurred: {http_err}')
    except Exception as err:
        print(f'Other error occurred: {err}')
    else:
        print('Request success!')
        with open(file_name_pickle, 'wb') as f:
            print(f"Writing cached {file_name_pickle}")
            pickle.dump(response, f)


source = response.text
soup = BeautifulSoup(source, 'html5lib')


# classes range from class_='cdata-hour23' for 00h to class_='cdata-hour00' for 1h
hr_range = [f"{i:02d}" for i in list(range(23, -1, -1)) ]

page_data = "hour;temp;rain;humi;wind\n"
for h in hr_range:
    class_ = 'cdata-hour' + h
    try:
        row = soup.find('tr', class_= class_)
    except:
        continue
    try:
        hour = row.find('span', class_="tipsy-trigger").text
    except:
        hour = 'NaN'
    try:
        temp = row.find('span', text="°C", attrs={'class' : 'tab-units-v'}).previous_sibling.previous_sibling.text
    except:
        temp = 'NaN'
    try:
        rain = row.find('span', text="mm/1h", attrs={'class' : 'tab-units-v'}).find_parent('td').contents[0].replace(' ', '')
    except:
        rain = 'NaN'
    try:
        humi = row.find('span', text="%", attrs={'class' : 'tab-units-v'}).previous_sibling.text
    except:
        humi = 'NaN'
    try:
        wind = row.find('span', text="km/h", attrs={'class' : 'tab-units-v'}).previous_sibling.previous_sibling.text
    except:
        wind = 'NaN'
    result = ';'.join([hour, temp, rain, humi, wind]) + '\n'
    page_data += result


# write headers / all page's data
with open(file_name_csv, 'w') as f:
    f.write(page_data)

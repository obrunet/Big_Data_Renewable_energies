"""
Parse different folders of extracted archives downloaded here : https://www.ecad.eu/dailydata/predefinedseries.php
open files one by one and remove all spaces. Spaces are useless because separation is made by commas

author : Olivier Brunet
2019-10-18
licence : GPL
"""

from os import listdir
from os.path import isfile, isdir, join


current_path = "test_datasets"
folders = ['Daily global radiation QQ ', 'Daily maximum wind gust FX']

for folder in folders:
    folder_path = join(current_path, folder)
    only_files = [f for f in listdir(folder_path) if isfile(join(folder_path, f))]
    for f in only_files:
        file_path = join(folder_path, f)
        with open(file_path, 'r') as fin:
            data, new_data = fin.read().splitlines(True), []
            for l in data:
                new_data.append(l.replace(" ", ""))
        with open(file_path, 'w') as fout:
            fout.writelines(new_data)

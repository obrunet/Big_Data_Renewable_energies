## Datasets sources et description :


  - Kaggle [Energie solaire](https://www.kaggle.com/sohier/30-years-of-european-solar-generation) et [éolienne]([Kaggle](https://www.kaggle.com/sohier/30-years-of-european-wind-generation))
  	- estimations heure par heure de différents sites de production à travers l’Europe de 1985 à 2015
  	- licence : Creative Commons CC0 : Public Domain

- the European Climate Assessment & Dataset project » [ECAD](https://www.ecad.eu//dailydata/index.php)
  - mesures météo extrêmes ainsi que des infos journalières. 
  - Licence : « strictly for use in non-commercial research and education projects only »

- Indicateurs énergétiques - [The World Bank](https://data.worldbank.org/indicator)

- [Open Power Data System Data](https://open-power-system-data.org/)

- Scraping du site internet [infoclimat](google.com)


## Scripts : 

- Prétraitement de gros volumes de données
  - [suppression d'entêtes et des espaces de milliers de fichiers text](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/01_datasets/preparation_datasets_meteo/remove_headers_spaces.py)
  - [concaténation de multiples fichiers avec pandas](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/01_datasets/preparation_datasets_meteo/merge_files_copy.py)
- [Scraping de l'historique de données météo](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/01_datasets/web_scraping/several_webpages_scraping.py) - script robuste qui utilise de fake User Agents pour les headers de requests, avec un sleep un nbre random de secondes entre chaque requete qui permet de ne pas être bloqué comme bot. Les valeurs manquantes et différents cas de figure d'erreur sont traités, pour que le script ne soit pas bloqué/arrêté. Ce qui a permis de récupérer plusieurs années de data (soit plusieurs millieurs de requêtes).

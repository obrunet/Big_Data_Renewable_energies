_"A data lake is a system or repository of data stored in its natural/raw format,[1] usually object blobs or files. A data lake is usually a single store of all enterprise data including raw copies of source system data and transformed data used for tasks such as reporting, visualization, advanced analytics and machine learning. A data lake can include structured data from relational databases (rows and columns), semi-structured data (CSV, logs, XML, JSON), unstructured data (emails, documents, PDFs) and binary data (images, audio, video)."_
Source : [wikipedia](https://en.wikipedia.org/wiki/Data_lake) 

![Alt text](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/02_datalake/__Datalake.png)

---

Sont décrits ici toutes les étapes pour créer le __datalake__ de notre projet. 
- Celui ci est composé des données brutes / rentrées dans hdfs à froid __la dataRAW__. Le stockage est fait dans le format *.parquet qui présente un bon taux de compression (meme si inférieur au format *.avro) et lisible par impala (contrairement à avro)
- de __dataTABLES__ qui seront crées à l'aide de Spark et un connecteur CASSANDRA. Cassandra a été préféré à MongoDB pour des questions de compromis de vitesse d'écriture et de lecture, et de disponibilité/rapidité/cohérence.
- une __dataVIZ__ a été réalisé avec IMPALA. Impala permet d'effectuer des requetes dans un language d'abstraction proche de SQL sans avoir a passer par des jobs MapReduce. En effet impala va directement "taper" dans HDFS et demeure donc plus rapide.

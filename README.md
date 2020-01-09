## La data au service de la transition énergétique - cas particuliers des énergies solaire et éolienne

## Contexte

La transition énergétique est un enjeu stratégique et toujours d’actualité : Comment passer d’une énergie fossile à une énergie dite renouvelable, d’une production centralisée à un système décentralisé afin de répondre à la nécessité d’un développement durable et responsable d’un point de vue écologique ? 

Les énergies renouvelables proviennent de phénomènes naturels et sont des sources d'énergie dont le renouvellement naturel est assez rapide pour qu'elles puissent être considérées comme inépuisables à l'échelle du temps humain.

Au cours de ce projet, nous allons nous intéresser plus particulièrement à l’éolien et au solaire : dans quelle mesure le big data peut-il permettre de donner un éclaircissement sur cette problématique énergétique ?

![Alt text](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/banner.png)

Les slides de présentation sont consultables [ici](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/20200109_presentation.pdf)

## Objectifs / Use cases :

Finalités de cette étude :

-	Analyser la part des EnR et leurs évolutions dans le temps selon les zones géographiques (Monde / Europe / France).

-	Quelle périodicité retrouve-t-on d’une année sur l’autre dans les performances des stations éoliennes et solaires (jour / nuit, saisons ?)

-	Peut-on prédire dans le temps la performance énergétique des installations existantes ou futures. Quelle est l’indice de confiance ou la précision de ces prédictions ? Ces paramètres peuvent ils être suffisamment fiables si l’on devait envisager la création de nouvelles éoliennes ou de nouveaux panneaux solaires ?


## Déroulé du projet / grandes phases : 

-	00.[Informations générales & organisation](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/00_infos_organisation) :
	- fiche projet : contexte, use cases & perspectives
	- commandes shell et préconisations pour le travail d'équipe

-	01.[Recherche des données](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/01_datasets) : 
	- [The Information System for the European Strategic Energy Technology SETIS](https://setis.ec.europa.eu/)
	- [Open Power System Data](https://open-power-system-data.org/)
	- [European Climate Assessment & Dataset](https://www.ecad.eu/)
	- [World Bank Open Data](https://data.worldbank.org/)
	- [Our World in Data](https://ourworldindata.org/)

-	02.[Constitution du datalake](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/02_datalake) - ingestion & préparation des données :
	- Nettoyage "grande masse" des jeux de données
	- Selection des data les plus pertinents
	- Enrichissement : scraping et croissement de données

-	03.[Creation d'une db NoSQL](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/03_NoSql) & première analyse :
	- conversion en HBASE
	- premières requêtes pour avoir une vue macro des données


-	04.[Analyse de la data](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/04_data_analysis) :
	- Analyse la part des EnR et leurs évolutions dans le temps selon les zones géographiques
	- Analyse exploratoire des données de rendements des installations solaires et éoliennes

-	05.[Modèle prédictif de machine learning avec Spark](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/05_machine_learning)
    - Nettoyage (valeurs aberrantes, manquantes)
    - Corrélation entre features
    - Entrainement de différents modèles de machine learning (notamment de deep learning)

-	06.[Présentation des résultats](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/06_resultats) :
    -	Comparaison des prédictions aux valeurs réelles
    -	Graphiques de visualisations des différents objectifs

-	[Perspectives (optionnel)](https://github.com/obrunet/Big_Data_Renewable_energies/tree/master/07_perspectives) :
    -	Ingestion d’un flux de données sur la base de data plus récentes pour les futures prédictions
    -	Traitement de ce flux

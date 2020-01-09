## Prédictions des rendements des installations éoliennes et solaires par le biais de modèles de machine learning.

l'étude se décompose en deux grandes étapes :
- un Proof of Concept est réalisé avec un échantillon en low-data (faible quantité de données pouvant être traitée sur un noeud) avec __Scikit learn et Tensorflow__.
- puis un prototype en Big Data avec __PySpark__, qui permet de confirmer les résultats précédents tout en testant les différent modèles lorsqu'on les fait passer à l'échelle.

S'en suit généralement une phase d'industrialisation / déploiement qui n'est pas traiter ici, et qui consiste à retenir le meilleur modèle et à en optimiser l'implementation. On s'assure que les résultats n'aient pas tendance a se dégrader dans le temps.

Chacune des deux premières étapes évoquées précédements, sont redécoupées elles memes en 3 sous étapes :
- Clustering : en utilisant un modèle de machine learning non supervisé, nous avons pu déterminer des groupes de pays ayant des profils énergétiques similaires : 
	- [P.O.C de clustering pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/02.POC.01_Solar_Clustering.ipynb)
	- [P.O.C de clustering pour le vent](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/02.POC.04_Wind_Clustering.ipynb)
	- [Proto de clustering  pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/03.PROTO.01_Solar_Clustering.ipynb)
- Analyse exploratoire des données visant à comprendre comment les données sont structurées, quelles sont les valeurs manquantes / aberrantes : 
	- [P.O.C de l'analyse exploratoire pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/02.POC.02_Solar_EDA)
	- [P.O.C de l'analyse exploratoire pour le vent](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/02.POC.05_Wind_EDA.ipynb)
	- [Proto de l'analyse exploratoire pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/03.PROTO.02_Solar_EDA.ipynb)
- Prédictions par le biais de modèles de machine learning / deep learning : 
	- [P.O.C de prédictions pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/02.POC.03_Solar_Predictions.ipynb)
	- [Proto de prédictions pour le solaire](https://github.com/obrunet/Big_Data_Renewable_energies/blob/master/05_machine_learning/03.PROTO.03_Solar_Predictions.ipynb)
# Méthode Agile / Framework Scrum

Sources :
- https://www.thierry-pigot.fr/scrum-en-moins-de-10-minutes/#sprints
- http://igm.univ-mlv.fr/~dr/XPOSE2008/SCRUM/presentation.php

![Alt text](https://github.com/obrunet/Project_Big_Data_Renewable_energies/blob/master/00_infos_organisation/agile_scrum/Scrum-Overview-Diagram-575x359.png)

Scrum est une __méthode agile dédiée à la « gestion de projet »__. Cette méthode de gestion, ou plutôt ce __Framework de management__ de projet, à pour objectif d’__améliorer la productivité de son équipe__.

## Répartitions des rôles dans Scrum

- __Le Scrum Master__
  - S’assure que les principes et les valeurs de Scrum sont respectés
  - Facilite la communication au sein de l’équipe
  - Cherche à améliorer la productivité et le savoir faire de son équipe
- __L’équipe__
  - Pas de rôle bien déterminé : architecte, développeur, testeur
  - Tous les membres de l’équipe apportent leur savoir faire pour accomplir les tâches
  - Taille de 6 à 10 personnes en général et pouvant aller jusqu’à 200 personnes
- __Le Product Owner__
  - Expert métier, définit les spécifications fonctionnelles
  - Etablit la priorité des fonctionnalités à développer ou corriger
  - Valide les fonctionnalités développées
  - Joue le rôle du client
  
![Alt text](https://github.com/obrunet/Project_Big_Data_Renewable_energies/blob/master/00_infos_organisation/agile_scrum/methode-gestion-projet-scrum-575x223.png)


## Les sprints
Le cycle de vie Scrum est rythmé par des itérations de quelques semaines, les sprints.


## Artefacts
- le product backlog
Le référentiel des exigences initiales est dressé et hiérarchisé avec le client. Il constitue ce que l’on nomme le product backlog. Il ne doit pas nécessairement contenir toutes les fonctionnalités attendues dès le début du projet, il va évoluer durant le projet en parallèle des besoins du client.
- la sprint review
- le sprint backlog
- le sprint planning

## User Story
Les fonctionnalités décrites portent le nom de User Stories et sont décrites en employant la terminologie utilisée par le client.

Une User Story ou Story contient généralement les informations suivantes :

  - __ID__ – un identifiant unique
  - __Nom__ – un nom court (entre 2 et 10 mots), descriptif de la fonctionnalité attendue par le client (ex. Export / Import Standard Sales Item). Le nom doit être suffisamment clair pour que les membres de l’équipe et le Product Owner comprennent de quelle fonction il s’agit. Le nom ne doit pas introduire d’ambigüités.
  - __Importance__ – un entier qui fixe la priorité des Stories. La priorité d’une story peut être changée en cours de réalisation du projet.
  - __Estimation__ – La quantité de travail nécessaire pour développer, tester, et valider cette fonctionnalité. L’unité de mesure peut être un nombre de jours idéaux (jours à 100% dédiés à la fonctionnalité) ou un nombre de points. Les estimations se font en relatif en comparant les estimations des stories terminées avec la story à estimer.
  - __Demo__ – Un test relativement simple (ex : exporter un objet en XML puis l’effacer de la base, l’importer depuis le XML, à la fin l’objet doit être dans la base). Ce test constitue un test de validation.
  - __Notes__ – toute autre information : clarifications, références documentaires…

Le sprint planning meeting

On organise, avant chaque sprint, une réunion de planification, le sprint planning meeting. Ce planning sélectionne dans le product backlog les exigences les plus prioritaires pour le client. Elles seront développées, testées et livrées au client à la fin du sprint. Elles constituent le sprint backlog, un sous ensemble du product backlog.

La mêlée

Au cours du sprint, il est organisé, chaque jour, une réunion d’avancement (environ 15 min) avec tous les membres de l’équipe afin de s’assurer que les objectifs du sprint seront tenus, c’est le Scrum ou mêlée. Chaque jour, après la réunion Scrum, le Scrum Master maintient un graphique appelé sprint burndown chart. Ce graphique donne une très bonne vision de ce qui a été fait et du rythme de travail de l’équipe. Il permet également d’anticiper si toutes les stories du Sprint Backlog seront terminées à la fin de l’itération ou non.
Burndown Chart

![Alt text](https://github.com/obrunet/Project_Big_Data_Renewable_energies/blob/master/00_infos_organisation/agile_scrum/burndownchart-575x358.png)

Cette réunion n’a pas seulement un but purement informatif, mais aussi de stimuler l’esprit travail en équipe et le niveau d’engagement de chaque membre de l’équipe dans le projet. Durant la réunion chaque membre de l’équipe doit prendre la parole et présenter principalement les choses suivantes :

Ce que j’ai fait hier et les éventuels problèmes rencontrés

Ce que je vais faire aujourd’hui

Est ce que j’ai des difficultés pour continuer mon travail.

En faisant cet exercice quotidiennement chaque membre de l’équipe est au courant de ce que font ses collègues et il peut 
coordonner son travail et aider ou se faire aider en cas de difficultés.

Le Scrum Meeting n’est pas une réunion pendant laquelle on cherche à résoudre les problèmes, mais uniquement à les identifier et les exprimer. Le Scrum Master a pour rôle d’apporter des solutions ou de déléguer à un autre membre de l’équipe la résolution des problèmes soulevés durant le Scrum Meeting. A la suite de cette réunion le Scrum Master met à jour le burndown chart.

A la fin d’un sprint, on fait une démonstration au client des derniers développements, le Sprint Review Meeting. C’est aussi l’occasion de faire un un bilan, sur le fonctionnement de l’équipe et de trouver des points d’amélioration.

De part ses valeurs, Scrum prône l’adaptabilité, sous l’effet de l’expérience acquise et des spécificités du projet ce qui le rapproche de la méthode de production de Toyota. La visibilité, pour évaluer les résultats du processus. L’inspection, qui consiste à vérifier les écarts par rapport à l’objectif initial.

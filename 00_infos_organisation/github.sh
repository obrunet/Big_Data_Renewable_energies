# ------------------------- at the very beginning, JUST NEEDED ONE TIME ------------------------- 

# create a specific folder for the project and clone the existing content on github
mkdir Projet
cd Projet
git clone https://github.com/obrunet/Project_Big_Data_Renewable_energies.git
cd Project_Big_Data_Renewable_egit pull upstream master -X oursnergies/



# ------------------------- THEN EVERYDAY ------------------------- 

# fetch the lastest changes from origin and merge
git pull origin master

# DO YOUR WORK :)

# list new or modified files not yet commited
git status

# add all modifications with . or choose file by file
git add .

# commit your modifications
git commit -m "write your commit message here for logs..."

# upload / push every things you've modified or added to github
git push origin master



# ------------------------- EXTRAS ------------------------- 

# Show the full change history
git log

# Show the changes to files not yet staged
git diff
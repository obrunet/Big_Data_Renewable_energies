"""
Parse different folders of extracted archives downloaded here : https://www.ecad.eu/dailydata/predefinedseries.php
open files one by one and remove first 21 lines in order to remove headers
later the edited files will be concatenated and put in a datalake.

author : Olivier Brunet
2019-10-07
licence : GPL
"""


from os import listdir
from os.path import isfile, isdir, join


my_path = "/home/fitec/datasets/European Climate Assessment/wind"
folders = [f for f in listdir(my_path) if isdir(join(my_path, f))]
print("Start parsing folders :\t", folders)

# for each folder parse all files in it
for current_folder in folders:

    # list all files that need to be edited
    folder_path = join(my_path, current_folder)
    only_files = [f for f in listdir(folder_path) if isfile(join(folder_path, f))]
    print("Start editing files in current folder :\t", current_folder)

    # remove headers ie 21 first lines
    for f in only_files:
        file_path = join(folder_path, f)
        with open(file_path, 'r') as fin:
            data = fin.read().splitlines(True)
        with open(file_path, 'w') as fout:
            fout.writelines(data[22:])


"""
import os

print("root prints out directories only from what you specified")
print("dirs prints out sub-directories from root")
print("files prints out all files from root and directories")
print("*" * 20)

for root, dirs, files in os.walk("/var/log"):
    print(root)
    print(dirs)
    print(files)
"""
"""
Parse all files in different folders and rename then in order to remove spaces and specials characters
author : Olivier Brunet
2019-11-25
licence : GPL
"""

from os import listdir, getcwd, rename
from os.path import isfile, isdir, join

my_path = getcwd()

folders = [f for f in listdir(my_path) if isdir(join(my_path, f))]
print("Start parsing folders :\t", folders)

# for each folder parse all files in it
for current_folder in folders:

    # list all files that need to be edited
    folder_path = join(my_path, current_folder)
    only_files = [f for f in listdir(folder_path) if isfile(join(folder_path, f))]
    print("Start editing files in current folder :\t", current_folder)
    for fn in only_files:
        new_fn = fn.replace(" ", "_").replace("(", "_").replace(")", "_").replace("%", "_percentage_").replace(",", "_")
        rename(join(folder_path, fn), join(folder_path, new_fn))
"""
Parse txt files in different folders of extracted archives from https://www.ecad.eu/dailydata/predefinedseries.php
merge all infos in a pandas' dataframe, then saved in a csv for each folder (ie for each type of data)
later the edited files will be concatenated and put in a datalake.

author : Olivier Brunet
2019-11-18
licence : GPL
"""

import pandas as pd
from os import listdir
from os.path import isfile, isdir, join

# put all unzipped archives here:
my_path = "extracted_folders"
folder_theme = {"CC": "cloud_cover_", "QQ": "global_radiation_", "TX": "max_temp_", "FX": "wind_gust_",
                "TG": "mean_temp_", "FG": "mean_wind_speed_", "SS": "sunshine_duration_", "DD": "wind_direction_"}


def clean_df(curr_df, col_name):
    """Clean a specific dataframe: remove unneeded columns, NaNs, strange values..."""
    # remove columns full of NaNs, corresponding to several spaces in the txt file
    curr_df = curr_df.dropna(axis=1, how='all')
    # rename them
    curr_df = curr_df.rename(columns={2: "date", 3: col_name})
    # remove comas
    try:
        curr_df[col_name] = curr_df[col_name].str.replace(",", "")
    except:
        pass
    # drop lines with nan
    curr_df = curr_df.dropna()
    # convert type as int
    curr_df[col_name] = curr_df[col_name].astype(int)
    # remove lines with Nans & useless cols
    curr_df = curr_df[curr_df[col_name] != -9999]
    curr_df = curr_df[["date", col_name]]
    # convert into date
    curr_df['date'] = pd.to_datetime(curr_df['date'], format='%Y%m%d')
    return curr_df


folders = [f for f in listdir(my_path) if isdir(join(my_path, f))]
print("Start parsing folders :\t", folders)

# for each folder parse all files in it
for current_folder in folders:

    # list all files
    folder_path = join(my_path, current_folder)
    only_files = [f for f in listdir(folder_path) if isfile(join(folder_path, f))]
    print("Start collecting data in folder :\t", current_folder)

    # initialize an empty DF where all folder data will be merged in
    df = pd.DataFrame()

    # parse all files
    for fn in only_files:
        # set column name based on file name
        column_name = folder_theme[fn[:2]] + fn[8:-3]
        # create  and format DF
        df_temp = pd.read_csv(join(folder_path, fn), header=None)
        df_temp = clean_df(df_temp, column_name)
        # 1st time copy DF in empty one
        if df.empty:
            df = df_temp.copy()
        # otherwise merge 2 DF
        else:
            df = pd.merge(df, df_temp, how='outer')

    df = df.sort_values(by='date')
    df.to_csv(path=join("../", current_folder+".csv"))

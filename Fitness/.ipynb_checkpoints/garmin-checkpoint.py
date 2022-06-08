import sqlite3
import pandas as pd

def get_table_name(dir):
    con = sqlite3.connect(dir)
    display(pd.read_sql_query("SELECT name FROM sqlite_master WHERE type='table'", garmin_monit_con))
    
def get_hr(db_dir = "./HealthData/DBs/garmin_monitoring.db"):
    con = sqlite3.connect(db_dir)
    return pd.read_sql_query("SELECT * FROM monitoring_hr", con)

def average_fill(data):
    """
    Function defined for filling null values in a time series panda series.
    The method is by adding forward filling and backward filling in to 
    the original data, and taking averages, dividing by 2.
    
    Any null window will be filled by the average of values before and after
    the window.
    
    Input:
    Pandas dataframe to be filled.
    """
    return data.ffill().fillna(method = 'bfill').\
                    add(data.bfill().fillna(method = 'ffill')).div(2)

def garmin_prep(data, start = None, end = None, reindex = 'T', \
               data_type = 'monit'):
    """
    Function for garmin data preperation, setting timetamp as indices,
    converting datetime to format from years to seconds. Also fill null
    values with average filling method.
    
    Input:
    Pandas dataframe, which has the format of dataframe import from Garmin databases:
    Heart rate monitoring databases
    _____________________________________________
    |Index    | timestamp    | heart_rate       |
    |____________________________________________
    |.....    | ......       |  .............   |
    |.....    | ......       |  .............   |
    |.....    | ......       |  .............   |
    
    Activity monitoring databases:
    Contain columns as : Index(['activity_id', 'record', 'timestamp', 'position_lat', 'position_long',
       'distance', 'cadence', 'hr', 'rr', 'altitude', 'speed', 'temperature'],
      dtype='object')
      
      
    Optional:
    start: Str, desired start date of the dataframe in the format of '%Y-%m-%d'
    end  : Str, desired end data of the dataframe in the format of '%Y-%m-%d'
    reindex : Str, time period for reindexing, default value to minutes, 'T'
    data_type : Type of dataframe to be processed, default as the format
    """
    if data.index.dtype == pd.api.types.is_datetime64_any_dtype:
        print("The datafarme had already been prepared!")
        return None
    if start != None and end != None:
        data = data.loc[(data['timestamp'] >= start) & (data['timestamp'] < end)]
    data_tmp = data.set_index('timestamp')
    data_tmp.index = pd.to_datetime(data_tmp.index, format="%Y-%m-%d %H:%M:%S")
    if reindex != False:
        data_tmp = data_tmp.reindex(pd.date_range(start, end, freq = reindex))
    if data_type == 'monit':
        data_tmp = average_fill(data_tmp)
        assert data_tmp.isnull().sum().values == 0
    elif data_type == 'act_monit':
        data_tmp['hr'] = average_fill(data_tmp['hr'])
        assert data_tmp['hr'].isnull().sum() == 0
    return data_tmp
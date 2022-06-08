import pandas as pd

def fitbit_dataprep(df_fitbit):
    """
    A function for cleaning fitbit data, converting bpm from string to int.
    Also setting dateTime data to indexes with straightforward format.
    """
    if 'dateTime' not in df_fitbit.columns:

        print("The dataframe was already prepared!")
        return df_fitbit
    df_fitbit = df_fitbit.set_index('dateTime')
    df_fitbit['bpm'] = df_fitbit['bpm'].astype('int')
    df_fitbit['confidence'] = df_fitbit['confidence'].astype('int')
    df_fitbit.index = pd.to_datetime(df_fitbit.index, format = '%Y-%m-%d %H:%M:%S')
    return df_fitbit

def data_split(data):
    if 'value' not in data.columns:
        print("The dataframe is already splitted!")
        return data
    data['value'] = data['value'].astype('str')
    tmp = data.value.str.split(' ', expand = True)
    data[['bpm', 'confidence']] = tmp[[1, 3]]
    strip_col = ['bpm', 'confidence']
    data[strip_col] = data[strip_col].apply(lambda x: x.str.strip(",} "))
    data.drop("value", axis = 1, inplace = True)

def test():
    print("WOWHIT")
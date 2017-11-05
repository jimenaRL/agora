# coding: utf-8

import os
import pandas as pd
import sys
reload(sys)
sys.setdefaultencoding("utf-8")
from agora import encode, unidecode

SORT_CRITERIA = ['Pays', 'TIME', 'Formulation']
OUT_VALUES = SORT_CRITERIA + ['Value', 'Map_Value']


def ecart_pourcentage(df):
    max_ecart = df['Value'].max()
    df['Map_Value'] = df['Value'].apply(lambda x: float(x)/float(max_ecart))
    df['Value'] = df['Value'].apply(lambda x: "-%1.1f%%" % x)
    return df[OUT_VALUES]


def women_pourcentage(df):
    df['Map_Value'] = df['Value'].apply(lambda x: (float(x) - 50)/50.).abs()
    df['Value'] = df['Value'].apply(lambda x: "%1.1f%%" % x)
    return df[OUT_VALUES]


def by_sex_pourcentage(df):
    """
    Entries in df are different by sex.
    Value column of df correspond with a pourcentage of same sex people.
    We compute the difference betwwen men and women of that value.
    """

    # remove unuseful entries
    if 'Age Group' in df:
        df = df[df['Age Group'] == 'Total']
    if 'AGE' in df and 'TOTAL' in df['AGE'].unique().tolist():
        df = df[df['AGE'] == 'TOTAL']

    # get avalaible sexs
    df = df[df['SEX'] != 'ALL_PERSONS']
    df = df[df['SEX'] != 'ALL']
    avalaible_sexs = list(set(df['SEX'].tolist()))
    if 'WOMEN' in avalaible_sexs:
        women, men = 'WOMEN', 'MEN'
    elif 'GIRLS' in avalaible_sexs:
        women, men = 'GIRLS', 'BOYS'
    else:
        raise ValueError(avalaible_sexs)

    # compute difference treatment
    hash_criteria = df.columns.tolist()
    for c in [u'Value', u'Sexe', u'SEX']:
        hash_criteria.remove(c)
    df['hash'] = ''
    for c in hash_criteria:
        df['hash'] = df['hash'] + df[c].apply(lambda x: str(x))
    df['hash'] = df['hash'].apply(lambda x: hash(x))

    women_df = df[df['SEX'] == women].sort_values('hash')
    women_df.rename(columns={u'Value': 'Value_women'}, inplace=True)
    men_df = df[df['SEX'] == men].sort_values('hash')
    men_df.rename(columns={u'Value': 'Value_men'}, inplace=True)
    merged_sex = pd.merge(women_df, men_df, how='inner', on=SORT_CRITERIA+['hash'])

    # compute difference
    merged_sex['difference'] = merged_sex['Value_women'] - merged_sex['Value_men']
    merged_sex['Map_Value'] = merged_sex['difference'].apply(lambda x: float(x)/100.).abs()
    merged_sex['Value'] = merged_sex['difference'].apply(
        lambda x: "%s%1.1f%%" % ('+' if x >= 0 else '-', abs(x)))

    return merged_sex[OUT_VALUES]

READ_BASE_PATH = "/Users/JRLetelier/perso/agora/data/sources/oced_francais"
WRITE_BASE_PATH = "/Users/JRLetelier/perso/agora/data/m4l/oced_francais"

ENCODING = 'utf-8'
TO_DROP = [
    "Flags",
    "Flag Codes",
    "Reference Period Code",
    "Reference Period",
    "PowerCode",
    "PowerCode Code",
]

FILES = [
    'emploi/GENDER_EMP_29102017131217738.csv',
    'entreprenariat/GENDER_ENT1_29102017131256176.csv',
    'education/GENDER_EDU_29102017131322363.csv',
]

TO_USE = {

    ### emploie ###
    'EMP1': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP3': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP5': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP8': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP9': {
        'treatment': 'ecart_pourcentage',
        'formulation': 'Salaire des femmes par rapport aux hommes',
    },
    'EMP10': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP12_P': {
        'treatment': 'women_pourcentage',
        'formulation': '',
    },
    'EMP12_T': {
        'treatment': 'women_pourcentage',
        'formulation': '',
    },
    'EMP13_A': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP13_I': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EMP13_S': {
        'treatment': 'by_sex_pourcentage',
        'formulation': "Différence de la part de l'emploi des femmes par rapport aux hommes dans les services"
    },
    'EMP17': {
        'treatment': 'women_pourcentage',
        'formulation': '',
    },

    ### entreprenariat ###
    'ENT1': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT2': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT3': {
        'treatment': 'women_pourcentage',
        'formulation': '',
    },
    'ENT4': {
        'treatment': 'women_pourcentage',
        'formulation': '',
    },
    'ENT5': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT8': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT9': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT10': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT11': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT12': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'ENT13': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'SELF_TERTIARY_EDU': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'GAL_TRAINING': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'GAL_MONEY': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'SELF_YOUNG_SELF': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'GAL_RISK': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },


    ### education ###
    'EDU_11_READ': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EDU_11_MATH': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EDU_11_SCI': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EDU_12_READ': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EDU_12_MATH': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },
    'EDU_12_SCI': {
        'treatment': 'by_sex_pourcentage',
        'formulation': '',
    },

}


for f in FILES:

    pre_path = os.path.join(WRITE_BASE_PATH, os.path.split(f)[0])

    df = pd.read_csv(os.path.join(READ_BASE_PATH, f), encoding=ENCODING)
    df.rename(index=str, columns={'INDICATOR': 'IND'}, inplace=True)
    df.drop(TO_DROP, axis=1, inplace=True)

    df['Pays'] = df['Pays'].apply(lambda x: encode(x))

    indicatives = {tuple(_) for _ in df[['Indicateur', 'IND', 'Unit']].as_matrix().tolist()}
    for ind_name, ind_code, unit in indicatives:
        if ind_code in TO_USE.keys():

            # security check
            assert unit == 'Pourcentage'

            # get data by indicateur and shuffle it
            ind_df = df[df.IND == ind_code].sample(frac=1)

            # change formulation if needed
            formulation = TO_USE[ind_code]['formulation']
            if formulation:
                ind_df['Formulation'] = formulation
            else:
                ind_df['Formulation'] = ind_df['Indicateur']
            ind_df['Formulation'] = ind_df['Formulation'].apply(lambda x: encode(x))

            # process data
            treatment_fn = locals()[TO_USE[ind_code]['treatment']]
            ind_df_treated = treatment_fn(ind_df)

            # print ""
            # print ind_code
            # print ind_name
            # print ind_df_treated.head(10)
            # ind_df_treated.to_csv(os.path.join(pre_path, unidecode(ind_name)+'.tsv'),
            #                       index=False,
            #                       header=False,
            #                       sep="\t")

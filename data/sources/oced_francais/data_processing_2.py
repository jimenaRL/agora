# coding: utf-8

import os
import pandas as pd

import sys
reload(sys)
sys.setdefaultencoding("utf-8")

from agora import encode, unidecode

SORT_CRITERIA = ['Pays', 'YEAR', 'Formulation']
OUT_VALUES = SORT_CRITERIA + ['Value', 'Map_Value']


def identity(df):
    df['Map_Value'] = df['Value']
    df['Value'] = df['Value'].apply(lambda x: "%1.2f%%" % x)
    return df[OUT_VALUES]


def pourcentage_des_femmes(df):
    df['Map_Value'] = df['Value'].apply(lambda x: (float(x) - 50)/50.).abs()
    df['Value'] = df['Value'].apply(lambda x: "%1.1f%%" % x)
    return df[OUT_VALUES]


def ratio_femmes_hommes(df):
    df['Map_Value'] = df['Value'].apply(lambda x: (100-float(x))/100.).abs()
    df['Value'] = df['Value'].apply(lambda x: "%1.1f%%" % x)
    return df[OUT_VALUES]


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
    "Groupe de revenus",
    u"Région",
    "REG",
    "INC",
    "Region",
    "REGION",
    "INCOME",
]

FILES = [
    # 'developpement/GID2_29102017131903644.csv',
    # 'developpement/GID2_29102017131918238.csv',
    'developpement/from_GID2_29102017131918238_taux.csv'
    # 'developpement/GIDDB2014_01112017200802456.csv',
    # 'developpement/GIDDB2014_01112017201008940.csv',
]

RENAME = {
    'INDICATOR': 'IND',
    'Indicator': 'Indicateur',
    'VAR': 'IND',
    'VARIABLE': 'IND',
    'Variable': 'Indicateur',
    'Variables': 'Indicateur',
    "TIME": "YEAR",
}

TO_USE = {
    # 'ECO_2': {
    #     'treatment': 'pourcentage_des_femmes',
    #     'formulation': 'Pourcentage de femmes parmi les parlementaires, hauts fonctionnaires et directeurs',
    # },
    # 'ECO_3': {
    #     'treatment': 'pourcentage_des_femmes',
    #     'formulation': 'Pourcentage de femmes parmi les cadres et techniciens',
    # },
    # 'EDU_16': {
    #     'treatment': 'ratio_femmes_hommes',
    #     'formulation': 'Ratio femmes/hommes de scolarisation dans le supérieur',
    # },
    # 'EDU_14': {
    #     'treatment': 'ratio_femmes_hommes',
    #     'formulation': 'Ratio femmes/hommes de scolarisation dans le primaire',
    # },
    # 'EDU_15': {
    #     'treatment': 'ratio_femmes_hommes',
    #     'formulation': 'Ratio femmes/hommes de scolarisation dans le secondaire',
    # },
    # 'RP_2': {
    #     'treatment': 'identity',
    #     'formulation': 'Mutilations génitales taux de femmes',
    # },
    # 'FC_2': {
    #     'treatment': 'identity',
    #     'formulation': 'Taux de femmes forcées à un mariage précoce',
    # },


    'EDU_4_5': {
        'treatment': '',
        'formulation': 'Taux d\'alphabétisation des jeunes',
    },
    'EDU_1_2': {
        'treatment': '',
        'formulation': 'Taux d\'alphabétisation',
    },



    # 'EDU_5': {
    #     'treatment': '',
    #     'formulation': 'Taux d\'alphabétisation des jeunes femmes, % des hommes',
    # },
    # 'EDU_4': {
    #     'treatment': '',
    #     'formulation': 'Taux d\'alphabétisation des jeunes femmes (%)',
    # },
    # 'EDU_2': {
    #     'treatment': '',
    #     'formulation': 'Taux d\'alphabétisation des hommes (%)',
    # },
    # 'EDU_1': {
    #     'treatment': '',
    #     'formulation': 'Taux d\'alphabétisation des femmes (%)',
    # },

}


for f in FILES:

    pre_path = os.path.join(WRITE_BASE_PATH, os.path.split(f)[0])
    df = pd.read_csv(os.path.join(READ_BASE_PATH, f), encoding=ENCODING)
    df.rename(index=str, columns=RENAME, inplace=True)
    df.drop(TO_DROP, axis=1, inplace=True, errors='ignore')

    df['Pays'] = df['Pays'].apply(lambda x: encode(x))

    indicatives = {tuple(_) for _ in df[['Indicateur', 'IND']].as_matrix().tolist()}
    for ind_name, ind_code in indicatives:

        # print "\t'%s': {\n\t\t'treatment': '',\n\t\t'formulation': '%s',\n\t}," % (ind_code, ind_name)

        # print df[df.IND == ind_code].sample(frac=1).head()

        if ind_code in TO_USE.keys():

            print ind_name
            print df[df.IND == ind_code].columns
            continue

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

            ind_df_treated.drop_duplicates()
            print ind_df_treated.head(10)
            # ind_df_treated.to_csv(os.path.join(pre_path, unidecode(ind_name)(ind_name)+'.tsv'),
            #                       index=False,
            #                       header=False,
            #                       sep="\t")

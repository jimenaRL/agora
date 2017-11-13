# coding: utf-8

import os
import glob
import pandas as pd

import sys
reload(sys)
sys.setdefaultencoding("utf-8")

from agora import encode

READ_BASE_PATH = "/Users/JRLetelier/perso/agora/data/sources/minist_educ/pretraited"
WRITE_BASE_PATH = "/Users/JRLetelier/perso/agora/data/m4l/minist_educ"

OUT_VALUES = ["pays", "année", "formulation", "value", "map_value"]

paths = [_ for _ in glob.glob(os.path.join(READ_BASE_PATH, '*'))
         if _.split('.')[-1] == 'csv']

for path in paths:
    print path
    df = pd.read_csv(path)[OUT_VALUES].dropna()
    df['pays'] = df['pays'].apply(lambda x: encode(x))
    df['value'] = df['value'].apply(lambda x: encode(str(x)))
    df['formulation'] = df['formulation'].apply(lambda x: encode(x))
    out_path = os.path.join(
        WRITE_BASE_PATH,
        os.path.split(path)[-1].split('.')[0]+'.tsv')
    df.to_csv(out_path, index=False, header=False, sep="\t")
    print df.head()
    print out_path

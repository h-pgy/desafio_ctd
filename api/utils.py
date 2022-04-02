import os
import sqlite3
import pandas as pd

def get_data():
    
    path_dados = os.path.abspath(os.path.join('data', 'desafio_selecao.db'))
    con = sqlite3.connect(path_dados)
    
    df = pd.read_sql('SELECT * FROM respostas_diagnostico WHERE data_submissao NOT NULL', 
                     con)
    
    return df
import os
import sqlite3
from api.models import Record
from datetime import datetime


def get_db(data_dir='data', db_name = 'desafio_selecao.db'):

    db_path = os.path.join(data_dir, db_name)

    return sqlite3.connect(db_path)


def insert_query(record: Record):

    query = '''
    INSERT INTO tbl_q_5 VALUES (
        {id_resposta},
        {ano_diagnostico},
        '{data_submissao}',
        '{orgao}',
        '{tipo_orgao}',
        {qtd_equipe},
        {utiliza_metodologia},
        {desktop_proprio}, 
        {desktop_locado},
        {desktop_proprio_antigo},
        '{dtime_atualizacao}'
    )
    '''
    dict_data = record.dict()
    dict_data['dtime_atualizacao'] = str(datetime.now())
    insert_statement = query.format(**dict_data)

    return insert_statement, dict_data


def create_record(record: Record):

    db = get_db()
    cursor = db.cursor()
    insert, data = insert_query(record)
    cursor.execute(insert)
    db.commit()

    db.close()
    
    return data
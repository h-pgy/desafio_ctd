from api.utils import get_data
from api.decorators import solve_ano, solve_orgao, copy_df

@solve_ano
@copy_df
def questao_1(df, *, ano):
    
    filtro_ano = df['ano_diagnostico'] == ano
    df_ano = df[filtro_ano].reset_index(drop=True)
    
    orgaos_e_tipos = set()
    
    for i, row in df_ano.iterrows():
        
        orgaos_e_tipos.add((row['orgao'], row['tipo_orgao']))
    
    return [{'nome_orgao' : orgao, 'tipo_orgao' : tipo} for orgao, tipo in orgaos_e_tipos]


@solve_ano
@solve_orgao
@copy_df
def questao_2(df, *, ano, orgao=None):
    
    if orgao is not None:
    
        df = df[df['orgao']==orgao].reset_index(drop=True)
        
    
    df = df[df['ano_diagnostico'] == ano].reset_index(drop=True)
    
    #certificar que a coluna esta com a tipagm correta
    df['qtd_equipe'] = df['qtd_equipe'].astype(int)
    
    
    return {'qtd_pessoas_dedicadas_a_ti' : int(df['qtd_equipe'].sum())}


@copy_df
def questao_3(df):
    
    SALARIO_TI = 12500
    df['salario'] = SALARIO_TI
    total = df['salario'].sum()
    grouped = df.groupby('tipo_orgao')['salario'].sum()/total
    grouped = grouped.apply(lambda x: round(x, 2))
        
    #renomear os labels para ficar no padrao JSON
    grouped = grouped.rename({item : item.lower().replace(' ', '_')
                            for item in grouped.index}, axis=0)
    
    return grouped.to_dict()

@copy_df
def questao_4(df):
    
    
    cols = ['desktop_proprio',
           'desktop_locado']    
    #precisa arrumar a tipagem, esta como text no banco
    for col in cols:
        df[col] = df[col].apply(lambda x: int(x) if x != '' else 0)
    
    ano = df['ano_diagnostico'].max()
    df = df[df['ano_diagnostico']==ano]
    
    grouped = df.groupby('orgao').sum()[['desktop_locado', 'desktop_proprio']]
    
    result = grouped.reset_index()
    
    return result.to_dict(orient='records')


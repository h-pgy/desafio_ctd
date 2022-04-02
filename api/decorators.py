from functools import wraps

def solve_ano(func):
    '''
    Solves the ano param, raising appropriated errors.
    Decorated func must have one keyword arguments named
    ano. Also, df should be the first positional argument'''
    
    @wraps(func)
    def decorated(*args, **kwargs):
        
        if len(args)<1:
            df = kwargs['df']
        else:
            df =  args[0]
        ano = kwargs.pop('ano')
        try:
            ano = int(ano)
            kwargs['ano'] = ano
        except ValueError:
            raise ValueError('Param <ano> must be integer, float or a string convertible to int')

        if ano not in df['ano_diagnostico'].unique():
            raise NotImplementedError(f'Ano {ano} não compreendido na pesquisa')
            
        return func(*args, **kwargs)
    
    return decorated


def solve_orgao(func):
    '''
    Solves the orgao param, raising appropriated errors.
    Decorated func must have one keyword arguments named
    orgao. Also, df should be the first positional argument'''
    
    @wraps(func)
    def decorated(*args, **kwargs):
        
        if len(args)<1:
            df = kwargs['df']
        else:
            df =  args[0]
        orgao = kwargs.get('orgao')
        if orgao is not None:
            if type(orgao) is not str:
                raise ValueError('Param <orgao> must be string')
            orgao = orgao.upper()

            if orgao not in df['orgao'].unique():
                raise NotImplementedError(f'Orgao {orgao} não compreendido na pesquisa')
            
            kwargs['orgao'] = orgao
            
        return func(*args, **kwargs)
    
    return decorated

def copy_df(func):
    '''
    Copies the dataframe, avoiding unwanted modifications
    '''
    
    @wraps(func)
    def decorated(*args, **kwargs):
        
        if len(args)<1:
            df = kwargs['df']
            df = df.copy()
            kwargs['df'] = df
        else:
            df =  args[0]
            df = df.copy()
            args = list(args)
            args[0] = df
        
            
        return func(*args, **kwargs)
    
    return decorated
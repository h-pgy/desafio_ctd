from fastapi import FastAPI, HTTPException
from fastapi.openapi.utils import get_openapi
from sqlalchemy.orm import Session
from typing import Optional
from api.models import Record
from api.utils import get_data
from api.questoes import questao_1, questao_2, questao_3, questao_4
from api.models import Record
from api.database import create_record


app = FastAPI()
df = get_data()


@app.get("/questao_1/{ano}")
async def questao_1_endpoint(ano: int):
    try:
        return questao_1(df, ano=ano)
    except ValueError as e:
        raise HTTPException(400, str(e))
    except NotImplementedError as e:
        raise HTTPException(404, str(e))

@app.get("/questao_2/{ano}")
async def questao_2_endpoint(ano: int, orgao: Optional[str]=None):
    try:
        if orgao:
            return questao_2(df, ano=ano, orgao=orgao)
        return questao_2(df, ano=ano)
    except ValueError as e:
        raise HTTPException(400, str(e))
    except NotImplementedError as e:
        raise HTTPException(404, str(e))

@app.get("/questao_3/")
async def questao_3_endpoint():
    try:
        return questao_3(df)
    except ValueError as e:
        raise HTTPException(400, str(e))
    except NotImplementedError as e:
        raise HTTPException(404, str(e))

@app.get("/questao_4/")
async def questao_4_endpoint():
    try:
        return questao_4(df)
    except ValueError as e:
        raise HTTPException(400, str(e))
    except NotImplementedError as e:
        raise HTTPException(404, str(e))

@app.post("/questao_5/")
async def questao_5_endpoint(record: Record):
    
    return create_record(record)



def custom_openapi():
    if app.openapi_schema:
        return app.openapi_schema
    openapi_schema = get_openapi(
        title="Desafio Prefeitura de São Paulo",
        version="0.0.1",
        description="Essa API foi desenvolvida por Henrique Pougy para o desafio da Prefeitura de São Paulo",
        routes=app.routes,
    )
   
    app.openapi_schema = openapi_schema
    return app.openapi_schema


app.openapi = custom_openapi

from pydantic import BaseModel
from typing import Optional
from sqlalchemy import Float, Column, Integer, String
from api.database import Base


class Record_model(Base):
    __tablename__ = "tbl_q_5"

    id_row = Column(Integer, primary_key=True)
    id_resposta : Column(Integer, index=True)
    ano_diagnostico : Column(Integer, index=True)
    data_submissao: Column(String, unique=False, default=None)
    orgao : Column(String, unique=False, default=None)
    tipo_orgao : Column(String, unique=False, default=None)
    qtd_equipe : Column(Float, unique=False, default=None)
    utiliza_metodologia : Column(Integer, unique=False, default=None)
    desktop_proprio : Column(Integer, unique=False, default=None)
    desktop_locado : Column(Integer, unique=False, default=None)
    desktop_proprio_antigo : Column(Integer, unique=False, default=None)
    dtime_atualizacao : Column(String, unique=False, default=None)

class Record_base(BaseModel):
    id_resposta : int
    ano_diagnostico : int
    data_submissao: Optional[str] = None
    orgao : Optional[str] = None
    tipo_orgao : Optional[str] = None
    qtd_equipe : Optional[float] = None
    utiliza_metodologia : Optional[int] = None
    desktop_proprio : Optional[int] = None
    desktop_locado : Optional[int] = None
    desktop_proprio_antigo : Optional[int] = None
    dtime_atualizacao : Optional[str] = None

class Record(Record_base):

    class Config:
        orm_mode = True

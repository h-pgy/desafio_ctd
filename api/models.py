from pydantic import BaseModel
from typing import Optional


class Record(BaseModel):
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
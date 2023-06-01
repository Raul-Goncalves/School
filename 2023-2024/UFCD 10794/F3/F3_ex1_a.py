#programa principal

from F3_amigos import *
from F3_colegas import *
from F3_pessoa import *

A=amigo('Pedro', '917675522','Engenheiro','UBI')
B=colega('Rita', '915553344','lisboa',2015)

print(f"{A.nome()}\t{A.telefone()}\t{A.la()}\t{A.anoa()}")
print(f"{B.nome}\t{B.telefone}\t{B.profissao}\t{B.localtrabalho}")

A.impressaoA()
B.impressaoB()
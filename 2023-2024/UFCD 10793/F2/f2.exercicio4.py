from enum import enum
class Nota(enum):

    A = 5
    B = 4
    C = 3
    D = 2
    E = 1 

print(f"{Nota.A.value} - Distinção: {Nota.A.name}")
print(f"{Nota.B.value} ou {Nota.C.value} - Aprovado: {Nota.B.name} ou {Nota.C.name}")
print(f"{Nota.D.value} ou {Nota.E.value} - Prova Oral: {Nota.D.name} ou {Nota.E.name}")

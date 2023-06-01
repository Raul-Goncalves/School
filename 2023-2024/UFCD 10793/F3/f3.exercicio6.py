categoria={
    
    "A": 1500,
    "B": 1500,
    "C": 1500,
    "D": 1250,
    "E": 1000,
    "F": 1000
}

quest  = input("Coloque a categoria profissional (A,B,C,D,E,F): ")
print(f"A categoria {quest.upper()} aufere  de {float (categoria.get(quest.upper(),700)):6.2f}€ de salário base")

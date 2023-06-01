Equipe1 = ['António','Teresa','Joana','Míguel','Rita']
Equipe2 = ['Rui','Rosa','Rita']
Equipe = Equipe1 + Equipe2
Equipe.append('Justino')
Equipe.insert(2,'Maria')
Equipe.remove(Equipe[3])
print(Equipe)
for E in sorted(Equipe):
    print(E, "tem índice ", Equipe.index(E))
print()
Rs = 0
for E in Equipe:
    if E[0:1].upper() == 'R':
        Rs += 1
        print(Rs)
print(f"Vai haver {Rs} pessoas com nomes começados por R")
print(f"Vai haver {Equipe.count('Rita')} pessoas com nome Rita")
P = "Ana Sofia"
print(P, "faz parte do projeto" if P in Equipe else "ñ é membro do projeto")
print(Equipe)
Equipafinal = Equipe[0: -2]
print(Equipafinal)
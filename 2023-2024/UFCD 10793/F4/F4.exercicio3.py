print("Coloque o tipos de pizza que vc mais gosta: ")

listpizza=[]
for valor  in range(3):
     a = input(f"PIZZA {valor+1} -> ")
     listpizza.append(a)
for lista in listpizza:
    print("Eu gosto de pizza de " + lista)

print ("eu adoro pizza mesmo")
def pot (x,y):
    if y != 0:
        expoente=(x ** y)
        return expoente
    else:
        return 1
    

base = int(input("Coloque a base do numero: "))
expoente = int(input("Coloque a expoente do numero: "))

resutlado=pot(base,expoente)



print(f"Sendo {base}^{expoente}={resutlado};")
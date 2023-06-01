from pickle import TRUE


a = input("Coloque o numero de alunos: ")
minimo = max = 0
p=100

while True:
    media= float(input("Coloque um valor: "))
    if media == -1:
        break;
    if p == 100:
        minimo= max = media
        p = 102
    if media > max:
        max = media
    if media < minimo:
        minimo = media
        
print(f"MAXIMO={max},MINIMO={minimo}")

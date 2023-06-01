vect = []
neg = []
pares = []
R=A=0
copiar= []

print("O  vetor de 6 elementos reais")
for i in range(6):
    u= float(input(f"Valor{i+1}:: "))
    vect.append(u)
    R += u
    if u < 0:
        neg.append(u)
    if u%2 == 0:
        A+=1
        pares.append(u)
print("\nVetor:: ",vect)
print("Soma dos elementos dos vetores: ", R)
print("Pares:: ",pares)
print("Negativos:: ",neg)
print("Numeros Negativos:: ", len(neg))

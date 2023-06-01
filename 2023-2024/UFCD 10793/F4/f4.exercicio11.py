A = []

while True :
    y = int(input("Bota ai um numero (0 para parar)"))
    if y == 0:
        break
    A.append(y)

print(sum(A)/len(A))

number = int(input("Coloque um numero: "))
mais = 1

for r in range(1,number+1):
    mais = mais*r
print(f"O fatorial de {number} é {mais}")
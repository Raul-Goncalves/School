a = int(input("Coloque o primeiro valor:"))
b = int(input("Coloque o segundo valor:"))
c = int(input("Coloque o terceiro valor:"))

maior = a
if b > a and b > c:
    maior = b
if c > a and c > b:
    maior = c
    
print(f"O maior número digitado foi {maior}")
a=float(input("Coloque o primeiro numero: "))
b=float(input("Coloque o primeiro numero: "))
c=float(input("Coloque o primeiro numero: "))

def maior(a,b,c):
    if a > b > c:
        print(f"O numero {a} é o maior")
    elif b > a > c:
        print(f"O numero {b} é o maior")
    else:
        print(f"O numero {c} é o maior")

print(maior(a,b,c),"")
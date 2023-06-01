n=int(input("numeros: "))
p=[
    x*y for x in range(1,n+1) for y in range (x+1)
]

print(p)
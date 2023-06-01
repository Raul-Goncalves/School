a = int(input("Coloque um numero! "))
b = int(input("Coloque um numero maior que o anterior! "))

c=0

while True:
    c= a%2
    if a==1 and a != b:
        print(a)
    if a != b:
        a = a+1
    else:
        break
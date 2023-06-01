numero= int(input("Coloque um numero"))
multip=0

for counter in range(2,numero):
    if(numero%counter == 0):
        multip +=1

if(multip ==0):
    print("O numero é primo")
else:
    print("Numero não é primo")
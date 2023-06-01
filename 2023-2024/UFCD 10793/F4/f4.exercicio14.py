R = [2,5,78,1,100,5,50,20,24]

R.sort()

A=[]
u=int(input("Coloque um valor para pesquisar:: "))
print("O valor ",u, "encontra no local ", end="")
l=len(R)
for i in range(l):
    if R[i]==u:
        print("Posição: ",i,"\t",end="")
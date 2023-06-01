
def escritacidade(b):
    a=int(input("Coloque quantas cidade são: "))
    for i in range (a):
        c=input("Cidade: ")
        b.append(c)
def leituracidade(b):
    for i in range(len(b)):
        if b[i][0] in ['d','e','f','g','D','E','F','G']:
            print(b[i])
b = []

escritacidade(b)

print("\n",b,"\n")



print("cidades pretendidas:")
leituracidade(b)
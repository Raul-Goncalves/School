f=open("QUALQUECOISA\exemplo.txt","w")
f.write("Bolas! gravei um conteudo por cima!")
f.close()

f=open("exemplo.txt","r")
print(f.read())
f.close()

f=open("exemplo.txt","a")
f.write("\nBom dia\nBoa tarde\nBoa noite")
f.close()

f=open("exemplo.txt","r")
print(f.read())
f.close()

f=open("exemplo.txt","r")
print(f.readline())
print(f.readline(3))
f.close()

f=open("exemplo.txt","r")
print(f.readlines())
f.close()

with open('exemplo.txt') as f:
    seq = f.readlines()
seq = [linha.strip() for linha in seq]
print(seq)
f.close()

f=open("exemplo.txt")
for x in f:
    print(x.strip())
f.close()

f=open("exemplo.txt")
for linha, x in enumerate(f):
    print(linha,": ",x.strip())
f.close()

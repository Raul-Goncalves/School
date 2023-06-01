palavroes = ["a"] * 5
x = 0 
while x != 5:
    y = x + 1
    palavroes[x] = str(input(f"Coloque o {y} nome: "))
    x = x + 1 
palavroes.sort(key=len)
print(palavroes)
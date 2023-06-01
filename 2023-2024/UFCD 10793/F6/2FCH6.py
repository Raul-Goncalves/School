Pessoal=() 
i=4
j = 0
Num=100
Cat=65 
for i in range (i) :
    Nome = str(input(f"Nome das pessoas {i+1} ->"))
    Pessoal += (Num, Nome, chr(Cat)) # aqui os parêntesis são opcionais
    Num += 10
    Cat += 1
print("Numero x x Nome x x Categoria")
for j in range (0,i*3,3) :
    print(Pessoal[j]," x x ",Pessoal[j+1]," x x ",Pessoal[j+2])
Pessoal=()
ListaPessoal=[]
F=4
Num=100
for i in range (F) :
    Nome = str(input(f"Nome do funcionário {i+1} ->"))
    Cate = str(input(f"Insira a categoria do funcionario {i+1} ->"))
    Sal = str(input(f"Insira i salario do funcionario {i+1} ->"))
    Pessoal = Num, Nome, Cate,Sal
    ListaPessoal.append(Pessoal)
    Num += 10
for t in ListaPessoal :
    Nu, N, C, S = t
    print(f"Numero: {Nu} Nome: {N} Cat: {C} Salario: {S}")
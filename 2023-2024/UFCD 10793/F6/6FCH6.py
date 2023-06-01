from collections import namedtuple
my_tuple = namedtuple("Funci", ['num', 'nome', 'cat', 'salario'])
poxa = []
Num = 100
for i in range(4):
    Nome = str(input(f"Nome do funcionário {i+1} ->"))
    Cate = str(input(f"bota a categoria do funcionario {i+1} ->"))
    Sal = str(input(f"coloca i salario do funcionario {i+1} ->"))
    poxa.append(my_tuple(Num, Nome, Cate, Sal))
    Num += 10
for t in range(4):
    print(poxa[t].num, poxa[t].nome, poxa[t].cat, poxa[t].salario)
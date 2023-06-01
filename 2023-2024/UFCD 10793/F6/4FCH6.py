from collections import namedtuple
my_tuple = namedtuple("Funci",['num','nome','capo','salario'])
poxa = ()
poxa = [my_tuple('100','Maria','A',1200)]
poxa = poxa + [my_tuple('110','Gomes','B',1100)]
poxa = poxa + [my_tuple('120','Rui','B',1000)] 
poxa = poxa + [my_tuple('130','Marco','C',140)]
poxa = poxa + [my_tuple('950','Alda','C',880)]
poxa = poxa + [my_tuple('150','Carla','D',900)]
d = 0
sal = 0
x = 0 
for x in range(len(poxa)):
    if poxa[x].capo == "C" or poxa[x].capo == "D":
        d += 1
    sal = sal + poxa[x].salario
print(f"Há {d} funcioarios das categorias C e D \nA média dos salarios é {sal/(x+1)}")


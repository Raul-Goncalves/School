from collections import namedtuple
my_tuple = namedtuple("Funci",['NFunc','Nome','Salario'])
ETA = ()
ETA = [my_tuple('1','André','1')]
ETA = ETA + [my_tuple('2','André2','1')]
ETA = ETA + [my_tuple('3','André3','1')]
for x in range(len(ETA)):
    print(ETA[x].NFunc,ETA[x].Nome,ETA[x].Salario)
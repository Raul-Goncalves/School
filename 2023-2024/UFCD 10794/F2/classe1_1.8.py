from ex8 import *
Inf=[["Ana pinto", 14, 15], ["Rui Pinto", 17,18], ["carla silva", 14,10], ["Telmo gomes",10,12]]
for x in Inf:
    E=EstudanteInf(x[0],x[1],x[2])
    cf=E.Classfinal()
    if cf<8:print("Reprovado")
    if cf<10:print("Admitido a oral")
    else:print("Aprovado")
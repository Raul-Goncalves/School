from ast import If


A= 0
B= 0 
C= 0
D= 1

while C != 50:
    C=C+1
    A=C/D
    B=B+A
    D=D+1
    if D==C:
        D=D+1
    while C==D:
        C=C+1

print(C)
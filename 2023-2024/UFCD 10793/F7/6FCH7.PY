def pot (x,y):
    if y != 0:
        expoente=(x ** y)
        return expoente
    else:
        return 1
    
def VAL(x,t,n):
    for i in range(1,n+1):
        a=a+x/pot(1+t,i)
    return a

print("Coloque três variaveis: ")

x=int (input("X= "))
t=int (input("T=  "))
n=int (input("N=  "))
print(f"Val={VAL(x,t,n)}")

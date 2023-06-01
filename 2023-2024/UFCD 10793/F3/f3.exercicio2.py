from cmath import sqrt


a= float(input("Insira o valor de a.b.c"))
b= float (input())
c= float (input())

det=b*b-4*a*c

if det > 0:
    x=-b+sqrt(det)/(2*a)
    x2=-b-sqrt(det)/(2*a)
    print(f"x={x:7.2f} ou x={x2:7.2f}")
elif det< 0:
    print("a função não tem raiz reais")
else:
    print(f"x={-b/(2*a):7.2f}")
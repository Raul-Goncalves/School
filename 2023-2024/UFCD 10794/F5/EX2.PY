def mult(x,y):
    global TabErros
    try:
        if type(x)==str or type(y)==str:
            raise ValueError
    except:
        print("Erro de variavel tem que ser numerica")
        TabErros=1
    else:
        print(f"{x}x{y}={x*y}")
    finally:
        print("Nº de erros detectados: ", TabErros)
TabErros=0
print("Coloque dois valores numericos caso queria para digite 0")
z=1
while z!=0:
    x=input("Coloque o valor de X")
    y=input("Coloque o valor de Y")
    mult(x,y)
    z=input("Continuar")

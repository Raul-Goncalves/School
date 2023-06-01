def inteiros(x):
    try:
        if x<1 or x>199:
            raise ValueError
        if type(x)!=int:
            raise TypeError
    except ValueError:
        print("O valor tem que estar entre 0 e 200!")
    except TypeError:
        print("Coloca um valor inteiro!")
    else:
        print(f"1 / {x} = {1/x}")

print("Coloque dois numero inteiros, para dar stop digite 0: ")
z=1
while z!='0':
    x= int(input("Valor de X? "))
    inteiros(x)
    z= input("Deseja Continuar? ") 
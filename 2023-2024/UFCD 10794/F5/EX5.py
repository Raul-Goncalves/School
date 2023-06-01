def LerMes(whymes): 
    try:
        whymes = int(whymes)
        if whymes < 1 or whymes > 12 :
            raise TypeError 
    except TypeError:
            print("Coloque um inteiro (1-12)")
            return 0 
    except ValueError:
            print("tem que ser um inteiro (1-12)")
            return 0
    else:
        return whymes
            

mes=['jan','fev','mar','abr','mai','jun','jul','ago','set','out','nov','dez']

while True:
    
    mes1 = (input("Digita o mês do teu nascimento (de 1 a 12): "))
    X=LerMes(mes1)
    if X !=0 :
        print(f"O teu mês foi {mes[LerMes(mes1)-1]}")
    


def categoria():
    while True:
        try:
            letra = input("Digita alguma categoria ->").upper()
            if letra not in ["A","B","C"]:
                raise TypeError
        except TypeError:
            print("Coloque A,B ou C") 
        else:
            print(f"Categoria validada {letra}!")
            return
categoria()
def vetorial():
    numero = int(input("Fatorial de:: "))
    resultado=1
    count=1

    while count <= numero:
        resultado *= count
        count += 11
    return resultado

print(vetorial())
x = float(input("Coloque o valor de X?"))
y = float(input("Coloque o valor de Y?"))

try:
    z=x/(y-6)
except ZeroDivisionError:
    print("Divisão por zero. Y tem ser diferente de 6")
else:
    print(f"z={z:.2f}")
finally:
    print("'try exepet' completo")
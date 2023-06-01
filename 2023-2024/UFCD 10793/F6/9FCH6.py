Menus={
1:("Café e bolo de arroz", 1),
2:("dois cafés e meia torrada", 4.5),
3:("Meia de leite e tosta com manteiga", 3),
4:("Galao com tosta mista", 5)
}
t = 0
for x in Menus:
    a = Menus[x][1]
    if t < a:
        t = a
print(f"O maior preço é: {t}")

for x in Menus:
    a = Menus[x][1]
    if t > a:
        t = a
print(f"O menor preço é: {t}")

for x in Menus:
    a = Menus[x][1]
    t = t + a
o = t / 4
print(f"A media dos preços é: {o}")
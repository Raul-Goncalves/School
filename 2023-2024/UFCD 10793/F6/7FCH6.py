Menus={
1:("Café e bolo de arroz", 1.5),
2:("dois cafés e meia torrada", 4.5),
3:("Meia de leite e tosta com manteiga", 3),
4:("Galao com tosta mista", 5)
}
print("Menus disponíveis".center(45, "="))
for i in Menus :
    print(f"{i:<1}. {Menus[i][0].ljust(35)}{Menus[i][1]:>4} €")
print()
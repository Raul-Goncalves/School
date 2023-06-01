f = "Até que as pedras se tornem mais leves que a água."
a=0

for i in range(len(f)):
    if f[i]== " " or f[i]=="." or f[i]=="!" or f[i]=="?":
        a=a+1

print("'", f ,"'"," tem ",a," palavras")
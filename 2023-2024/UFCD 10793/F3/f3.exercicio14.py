l = int(input("Digite a largura: "))
a = int(input("Digite a altura: "))

print('x'*l)
for b in range(a-2):
  print("x "  + ' ' * (l-3)+'x')
print('x' * l)
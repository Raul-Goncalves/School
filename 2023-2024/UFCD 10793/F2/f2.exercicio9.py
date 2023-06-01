
name = input("Coloque seu nome: ")
salary = float(input("Coloque seu salário: "))
porcent = float(input("Qual a porcetagem do valor de vendas: "))
comsell = int(input("Qual é o valor de comissão por carro vendido: "))
numbercars = int(input("Quantos carros vendeu: "))
sellS = float(input("Qual o valor de vendas: "))


print(f"Nome: {name}")
print(f"Salário : {salary}")
print(f"Comissão por carro vendido: {comsell}")
print(f"Porcentagem por venda: {porcent}")
print(f"Numero de carro vendiddo: {numbercars}")
print(f"Valor de venda {sellS}")

print (f"Salario de {name} = {(salary + comsell * numbercars + sellS * porcent/100):7.2f}€")

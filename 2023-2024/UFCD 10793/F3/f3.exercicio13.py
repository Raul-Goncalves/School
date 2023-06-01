a = input("Coloque o numero de alunos: ")
b=0

Aprovado = 0
recureparacao = 0
reprovado = 0
execelente = 0

while b != a:
    media= float(input("Coloque a media da turma: "))
    if media >= 16:
        execelente = execelente+1
    if media >= 10:
        Aprovado = Aprovado+1  
    if media >= 6 and media <= 9:
        recureparacao = recureparacao + 1
    if media < 6:
        reprovado = reprovado +1

print(f"{execelente} alunos execelentes\n{Aprovado} alunos aprovados\n{recureparacao} aluno em recupreação\n{reprovado} alunos reprovados")
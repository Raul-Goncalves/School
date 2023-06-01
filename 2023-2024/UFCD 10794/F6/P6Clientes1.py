import pymysql.cursors


conexao = pymysql.connect(
host='127.0.0.1',
user='root',
password='',
db='clientes',
charset='utf8mb4',
cursorclass=pymysql.cursors.DictCursor
)

print(f'{"id":<4}{"nome":<10}{"sobrenome":<15}{"idade":<10}{"peso":<5}')


with conexao.cursor() as cursor:
    cursor.execute('SELECT * FROM clientes')
    result=cursor.fetchall()
    for registo in result:
        print(f"{registo['id']:<4}{registo['nome']:<10}{registo['sobrenome']:<15}{registo['idade']:<10}{registo['peso']:<5}")


print(f'\n\n{"id":<4}{"nome":<10}{"sobrenome":<15}{"idade":<10}{"peso":<5}')

with conexao.cursor() as cursor:
    cursor.execute('SELECT * FROM clientes order by peso desc LIMIT 3' )
    result=cursor.fetchall()
    for registo in result:
        print(f"{registo['id']:<4}{registo['nome']:<10}{registo['sobrenome']:<15}{registo['idade']:<10}{registo['peso']:<5}")
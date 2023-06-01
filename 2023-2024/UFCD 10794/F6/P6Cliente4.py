import pymysql.cursors
from contextlib import contextmanager

@contextmanager
def conecta():
    conexao = pymysql.connect(
        host='127.0.0.1',
        user='root',
        password='',
        db='clientes',
        charset='utf8mb4',
        cursorclass=pymysql.cursors.DictCursor
    )
    try:
        yield conexao
    finally:
        conexao.close()
#------------------------------------------

def menu():

    menu={
        1:'Listar',
        2:'Apagar',
        3:'Inserir',
        4:'Alterar',
        5:'Sair'
    }

    print("Menus".center(30, "="))
    for i in menu:
        print(f"{i:<1}. {menu[i].ljust(10)}")
    return input("Coloque um numero ai: ")
    
#------------------------------------------

def listar():

    print(f'{"id":<4}{"nome":<10}{"sobrenome":<15}{"idade":<10}{"peso":<5}')

    with conecta() as cursor:
        cursor.execute('SELECT * FROM clientes')
        result=cursor.fetchall()
        for registo in result:
            print(f"{registo['id']:<4}{registo['nome']:<10}{registo['sobrenome']:<15}{registo['idade']:<10}{registo['peso']:<5}")

#------------------------------------------

def inserir():

    with conecta() as conexao:
        with conexao.cursor() as cursor:
            sql = 'INSERT INTO clientes (id,nome,sobrenome,idade,peso) VALUES'\
                '(%s,%s,%s,%s,%s)'
            cursor.execute(sql,A=input('Coloque seu nome:'))
            cursor.execute(sql,B=input('Coloque seu Sobrenome:'))
            cursor.execute(sql,C=input('Coloque seu Idade:'))
            cursor.execute(sql,D=input('Coloque seu Peso:'))
            conexao.commit()


#------------------------------------------


def apagar():

    
#------------------------------------------

def alterar():


#------------------------------------------

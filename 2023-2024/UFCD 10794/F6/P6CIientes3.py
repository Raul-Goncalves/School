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

with conecta() as conexao:
    with conexao.cursor() as cursor:
        sql = 'INSERT INTO clientes (id,nome,sobrenome,idade,peso) VALUES'\
            '(%s,%s,%s,%s,%s)'
        cursor.execute(sql,('6','Raul','Goncalves','19','61'))

        conexao.commit()
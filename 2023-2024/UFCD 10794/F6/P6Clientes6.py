import  mysql.connector
from mysql.connector import Error


try:
    conn=mysql.connector.connect(host='localhost',database='clientes',user='root',password='')
    db_info = conn.get_server_info()
    print("LIGADO AO SEVIDOR MYSQL VERSÃO ",db_info)
    cursor=conn.cursor()
    cursor.execute("select databate();")
    linha= cursor.fetchone()
    print("LIGADA A DB ", linha)

    print("Nº DE REGISTRO LIDOS: ", cursor.rowcount, "\n")
    cursor = conn.cursor()
    sql = "selec * from clientes"
    cursor.execute(sql)
    registo =  cursor.fetchall()
    for linha in registo:
        print(linha)
    print(f"{'id':<10}{'nome':<10}{'sobrenome':<10}{'idade':<10}{'peso':<8}\n")
    for registo in registo:
        print(f"{registo[0]:<10}{registo[1]:<10}{registo[2]:<10}{registo[3]:<10}{registo[4]:<8}")

except mysql.connector.Error as erro:
    print(f"ERRO: {erro}")
finally:
    cursor.close()
    conn.close()
    print("CONEXÃO ENCERRADA AO MYSQL!")
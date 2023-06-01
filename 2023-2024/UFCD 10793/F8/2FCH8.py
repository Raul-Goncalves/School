import csv

with open('exemplo.csv') as f:
    for x in csv.reader(f,skipinitialspace=True):
        print(x)
f.close()

with open('exemplo.csv') as f:
    for x in csv.reader(f):
        print(x[0],x[1],x[2],x[3],x[4])
f.close()

with open('exemplo.csv') as f:
    csv_r=csv.reader(f)
    next(csv_r)
    for x in csv_r:
        print(x[0],x[1],x[2])
campos=['id','nome','email']
linah=[
    [1,'Ana','anabanana@gmail.com'],
    [2,'Sarita','saritada17@gmail.com'],
    [3,'Carlos','carlosxotada18@hotmail.com'],    
    [4,'Watson','watson29@gmail.com'],]

f=open('clientes.csv', 'wt')
x=csv.writer(f)
x.writerow(campos)
x.writerow(linah)
f.close()

with open('cliente.csv','rt') as f:
    x=csv.reader(f,skipinitialspace=True)
    for linha in x:
        if linha !=[]:
            print(linha)


C = ['Aveiro', 'Braga', 'Vila Real', 'Bragança', 'Lisboa', 'Almerim']
cidade = str(input(f"Coloque uma das cidades para ser substituida por Porto: "))
m = 0
for x in range(len(C)):
    if cidade in C[x]:
        C[x] = "Porto"
        m = 1
    if m != 1:
        print("Essa cidade não existe")
print(C) 
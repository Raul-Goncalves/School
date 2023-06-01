listProduct = {
    'cereais': 15,
    'arroz' : 10,
    'cenoura' : 15,
    'agua' : 10,
    'carne' : 1,
    'leite' : 10,

}

consultaproduto = input("Coloque a lista de vc quer ver! (cerrais,arroz,cenoura,agua,carne,leite) ?")
print(listProduct.get(consultaproduto +"%"))
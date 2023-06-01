class Pessoa:
    def __init__(self, nome,telefone):
        self.nome=nome
        self.telefone=telefone

    def nome(self):
        return self.nome
    def nome(self,n):
        self.nome=n

    def telefone(self):
        return self.telefone
    def telefone(self,tele):
        self.telefone=tele
    
    def impressao(self):
        return f"{self.nome}--{self.telefone}"
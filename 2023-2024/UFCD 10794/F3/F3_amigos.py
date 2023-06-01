from F3_pessoa import *

class amigo(Pessoa):
    def __init__(self, nome, telefone,localamizade,ano):
        super().__init__(nome, telefone)
        self.__localamizade=localamizade
        self.__ano=ano
    
    def la(self):
        return self.__localamizade
    def setla(self,n):
        self.__localamizade=n
    def anoa(self):
        return self.__ano
    def setanoa(self,n):
        self.__ano=n

    def impressaoA(self):
        print(f"{super().impressao()}{self.la()}--{self.anoa()}")

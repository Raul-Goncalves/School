from F3_pessoa import *

class colega():
    def __init__(self, nome,localtrabalho,telefone,profissao):
        self.__trabalho= localtrabalho
        self.__profissao= profissao
        super().__init__(nome,telefone)
        

        def localtrabalho(self):
            return self.__localtrabalho
        def profissao(self,profissao):
            return self.__profissao

        def Impressao(self):
            print(f"{super().impressao()}{self.localtrabalho()}--{self.profissao()}")
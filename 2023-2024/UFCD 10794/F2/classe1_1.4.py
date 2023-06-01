class EstudanteInf:
    def __init__(self, N, T1, T2):
        self.__Nome = N
        self.__Teste1 = T1
        self.__Teste2 = T2
    def ClassFinal(self):
        return (self.__Teste1 + self.__Teste2) / 2
    @property
    def Nome(self):
        return self.__Nome
    @Nome.setter
    def Nome(self, N):
        self.__Nome=N
    @property
    def Teste1(self): 
        return self.__Teste1
    @Teste1.setter
    def Notaa(self,T1):
        self.__Teste1=T1
    @property
    def Teste2(self): 
        return self.__Teste2
    @Teste2.setter
    def Notaa(self,T2):
        self.__Teste1=T2

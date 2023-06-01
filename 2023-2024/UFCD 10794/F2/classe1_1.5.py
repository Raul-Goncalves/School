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
    def Teste1(self,T1):
        self.__Teste1=T1
    @property
    def Teste2(self): 
        return self.__Teste2
    @Teste2.setter
    def Teste2(self,T2):
        self.__Teste1=T2
E=EstudanteInf("Ana Paiva", 14, 16)
E.Nome="Ana Maria Paiva"
E.Teste1=16.0
E.Teste2=18.0
print(f"{'Nome':^15}{'Teste1':^8}{'Teste2':^8}{'Classif. Final'}  ")
print(f"{E.Nome:^15}{E.Teste1:^8}{E.Teste2:^8}{E.ClassFinal()}")

class EstudanteInf:
    N='a'
    def __init__(self, N, T1, T2):
        self.__Nome = N
        self.__Teste1 = T1
        self.__Teste2 = T2
    def ClassFinal(self):
        return (self.__Teste1 + self.__Teste2) / 2
    #getter
    def GetNome(self):
        return self.__Nome
    def GetNotaa(self): 
        return self.__Teste1
    def GetNotab(self): 
        return self.__Teste2
E=EstudanteInf("Ana Paiva", 14, 16)
print(f"{'Nome':^15}{'Teste1':^8}{'Teste2':^8}{'Classif. Final'}  ")
print(f"{E.GetNome():^15}{E.GetNotaa():^8}{E.GetNotab():^8}{E.ClassFinal()}")



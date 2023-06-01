class EstufdanteInf:
    
    def __init__(self,Nome,Teste1,Teste2):
        self.Nome=__Nome
        self.Teste1=__Teste1
        self.Teste2=__Teste2
        
    def NotaFinal(self):
        return(self.__Teste1+self.__Teste2)/2
    
    
    
    
    
R1=EstufdanteInf('Ana Paiva',14,16)

print(f"{R1.Nome} teve a classificação final de {R1.NotaFinal()} valores")


print(f"Nome:{R1.Nome}"+
      "/tTeste1:{R1.Teste1}|Teste2:{R1.Teste2}" + 
      "|Classificação Final:{R1.NotaFinal()}")
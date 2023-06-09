public class Cachorro  extends  Animal{
    String dono,idade;

    Cachorro(String nomeCachorro, String nomeDono, String idadeCachorro){
        super(nomeCachorro);
        dono=nomeDono;
        idade = idadeCachorro;
    }
    void come(){

        System.out.println("Como carne...");
    }

    void som(){

        System.out.println("Emite Som... Ladrar");
    }
}

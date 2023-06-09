public class Cavalo  extends Animal{

    String raca,idade;
    Cavalo(String nomeCavalo,String nomeRanca,String idadeCavalo){
        super(nomeCavalo);
        raca=nomeRanca;
        idade=idadeCavalo;
    }

    void come(){
        System.out.println("Como palha...");
    }

    void salta(){
        System.out.println("Salto barreira..");
    }
}

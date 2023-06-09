public class Preguica extends Animal{

    String idade,habitat,nome;
    public Preguica(String nomePreguica, String habitatPreguica, String idadePreguica) {
        super(nomePreguica);
        idade=idadePreguica;
        habitat=habitatPreguica;
        nome=nomePreguica;

    }
    void come(){

        System.out.println("Como bagas...");
    }
    void acao(){

        System.out.println("sobe ás árvores...");
    }
}

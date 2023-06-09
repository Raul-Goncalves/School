import javax.naming.PartialResultException;

public class ExecutarComida {

    public static void main(String[] args) {

        Comida arroz = new Comida(designacao, calorias, gramas);
        arroz.designacao = "Arroz Carolino";
        arroz.calorias=112;
        arroz.gramas=100;

       System.out.println(arroz.designacao+" tem "+arroz.calorias+
               arroz.unidade_caloria+" em "+ arroz.gramas+arroz.unidade_peso);


        Comida arroz2 = new Comida("Arroz Carolino",112,100);
        Comida batata = new Comida("Batata cozida",71,140);

        System.out.println(arroz.getDesignacao() + " tem "+ arroz.getCalorias()+ arroz.getUnidade_caloria() +" em "
                + arroz.getGramas() + arroz.getUnidade_peso() );
        System.out.println(batata.getDesignacao() + " tem "+ batata.getCalorias()+ batata.getUnidade_caloria() +" em "
                + batata.getGramas() + batata.getUnidade_peso() );
        System.out.println(batata.toString());
        batata.setCalorias(37);
        batata.setGramas(50);
        System.out.println(batata.toString());

        Comida massa=new Comida("Massa Cozida", 100,50);
        Comida ameixa=new Comida("ameixa", 50,25);

        System.out.println(massa.toString());
        System.out.println(ameixa.toString());

        massa.setCalorias(25);
        massa.setGramas(50);
        ameixa.setCalorias(25);
        ameixa.setGramas(50);

        System.out.println(massa.toString());
        System.out.println(ameixa.toString());

        Comida alface=new Comida("alface frisada");
        System.out.println(alface.toString());

        alface.setCalorias(12);
        alface.setGramas(100);

    }
}

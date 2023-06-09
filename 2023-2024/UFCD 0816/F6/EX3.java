import java.util.Scanner;

public class EX3 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        double pt,mat,ing,media=0;
        String conceito = "";

        System.out.println("Coloque a nota de português: ");
        pt = entrada.nextDouble();
        System.out.println("Coloque a nota de matématica: ");
        mat = entrada.nextDouble();
        System.out.println("Coloque a nota de inglês: ");
        ing = entrada.nextDouble();

        media=((pt+mat+ing)/2);

        if(media > 200 || media < 0){
            System.out.println("Nota Invalida");
        }else if(media >7 ) {
            System.out.println("A média de aprovação é " + media);
        }else if(media >5 ) {
            System.out.println("a média para oral é "+media);
        }else if(media <5 ) {
            System.out.println("a média do reprovado é "+ media);
        }
        entrada.close();
    }

}


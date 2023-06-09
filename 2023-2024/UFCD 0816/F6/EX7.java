import java.util.Scanner;

public class EX7 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);

        double base,expoente,quadrado;

        System.out.println("Digite a base:");
        base = entrada.nextDouble();
        System.out.println("Digite o expoente:");
        expoente = entrada.nextDouble();

        double resultado = Math.pow(base,expoente);
        System.out.println("Potencia :" + resultado);

        System.out.println("\nDigite um numero para fazer a raiz:");
        quadrado = entrada.nextDouble();

        double raiz = Math.sqrt(quadrado);
        System.out.println("Raiz: " + raiz);



    }
}

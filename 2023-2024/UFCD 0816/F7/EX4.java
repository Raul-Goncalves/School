import java.util.Scanner;

public class EX4 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int[] number = new int[15];

        for (int i = 0; i < 15; i++) {
            System.out.print("Digite o " + (i+1) + "º número: ");
            number[i] = entrada.nextInt();
        }

        int par = 0 , imp=0;

        System.out.println("Os números digitados foram:");
        for (int i = 0; i < 15; i++) {
            if (number[i]%2 == 0 )
                par++;
            else
                imp++;
            System.out.println(number[i]);
        }

        System.out.printf("Numeros de pares %d\n", par);
        System.out.printf("Numeros de impar %d", imp);
        entrada.close();
    }
}

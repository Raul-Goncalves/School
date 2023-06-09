import java.util.Scanner;

public class EX2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int[] number = new int[15];

        for (int i = 0; i < 15; i++) {
            System.out.print("Digite o " + (i+1) + "º número: ");
            number[i] = entrada.nextInt();
        }
        System.out.println("Os números digitados foram:");
        for (int i = 0; i < 15; i++) {
            System.out.println(number[i]);
        }

        entrada.close();
    }
}

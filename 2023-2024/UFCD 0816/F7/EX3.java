import java.util.Scanner;

public class EX3 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int[] number = new int[15];

        for (int i = 0; i < 15; i++) {
            System.out.print("Digite o " + (i+1) + "º número: ");
            number[i] = entrada.nextInt();
        }

        //EX3
        int pos = 0 , neg=0;

        System.out.println("Os números digitados foram:");
        for (int i = 0; i < 15; i++) {
            //EX3
            if (number[i]>0)
                pos++;
            if(number[i]<0)
                neg++;
            System.out.println(number[i]);
        }

        System.out.printf("Numeros de positivos %d\n", pos);
        System.out.printf("Numeros de negativos %d", neg);
        entrada.close();
    }
}

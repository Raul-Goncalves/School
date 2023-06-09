import java.util.Scanner;
import java.io.*;

public class EX2 {

    public static void main(String[] args) {

        double d;
        long l;
        boolean b;

        Scanner entrant = new Scanner(System.in);

        System.out.println("Coloque um numero ai: ");
        d = entrant.nextDouble();

        System.out.println("Coloque outro numero ai: ");
        l = entrant.nextLong();

        b = entrant.nextBoolean();

        System.out.println("Valor devolvido: %f" + d);
        System.out.printf("Valor devolvido: %f" + l);
        System.out.printf("Valor devolvido: %f" + b);


    }

}

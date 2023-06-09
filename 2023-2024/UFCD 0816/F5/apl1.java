import java.util.Arrays;
import java.util.Scanner;

public class apl1 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        int i,n;
        System.out.printf("Indique o número para a tubuada:\n");
        n = entrada.nextInt();
        System.out.printf("\n+--RESULTADO--+\n");
        for (i=1;i<10;i++){
            System.out.printf("|%2d*%d-%2d|\n", i ,n,(i*n));
        }
        System.out.printf("+----------+\n");
    }
}

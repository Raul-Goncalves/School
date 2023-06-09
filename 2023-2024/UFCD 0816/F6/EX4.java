import java.util.Scanner;

public class EX4 {

    public static void main(String[] args) {

        int n1,n2,n3;

        Scanner entrada = new Scanner(System.in);

        System.out.println("Digte três numero para fazer ordem crescente: ");
        n1 = entrada.nextInt();
        n2 = entrada.nextInt();
        n3 = entrada.nextInt();

        if (n1 <= n2 && n1 <= n3)
            if(n2 <= n3)
                System.out.printf("A ordem crescente: %d %d %d\n", n1, n2, n3);
            else
                System.out.printf("A ordem crescente: %d %d %d\n", n1, n3, n2);
        if (n2 <= n1 && n2 <= n3)
            if(n1 <= n3)
                System.out.printf("A ordem crescente: %d %d %d\n", n2, n1, n3);
            else
                System.out.printf("A ordem crescente: %d %d %d\n", n2, n3, n1);
        if (n3 <= n1 && n3 <= n2)
            if(n1 <= n2)
                System.out.printf("A ordem crescente: %d %d %d\n", n3, n1, n2);
            else
                System.out.printf("A ordem crescente: %d %d %d\n", n3, n2, n1);


        entrada.close();

    }
}

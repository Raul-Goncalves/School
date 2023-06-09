import java.io.IOException;
import java.util.Scanner;

public class apl3 {

    public static void main(String[] args) throws IOException {

        Scanner entrada = new Scanner(System.in);
        String  nome;
        char genero;
        System.out.printf("Insira o seu nome: ");
        nome = entrada.nextLine();
        System.out.printf("\nInsira seu género(M/F): ");
        genero = (char)System.in.read();
        System.out.printf("\nResultado:\n");
        if ((genero == 'M') || (genero == 'm'))
            System.out.printf("Seja bem-vindo Sr \"%s\".\n",nome);
        else
            System.out.printf("Seja bem-vindo Sra \"%s\".\n",nome);
    }
}

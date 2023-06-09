import java.io.IOException;
import java.util.Scanner;

public class EX6 {

    public static void main(String[] args) throws IOException {

        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um tipo de Temperatura, C = 'Celcius & F ='Fahrenheit'");
        int typeTemp = (char)System.in.read();


        System.out.println("Digite a Temperatura: ");
        double Temp = entrada.nextDouble();

        switch (typeTemp){

            case 'C', 'c':
                double tempFinalc = ((Temp*9)/5)+32;
                System.out.println("Celcius" + tempFinalc);
                break;
            case 'F', 'f':
                double tempFinalF = ((Temp-32)*5)/9;
                System.out.println("Fahrenheit: " + tempFinalF);
                break;
        }

        entrada.close();
    }
}


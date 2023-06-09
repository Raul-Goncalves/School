import java.io.IOException;
import java.util.Objects;

public class EX2 {
    public static void main(String[] args) throws IOException {

        final float Num1=5,Num2=9;
        char num3;

        System.out.println("Digite o tipo de operação que deseja fazer (+, - , * , / , %): ");
        num3 = (char) System.in.read();


        float  resultado = Objects.equals('+',num3) ? Num1 + Num2 : 0;
               resultado = Objects.equals('-',num3) ? Num1 - Num2 : resultado;
               resultado = Objects.equals('*',num3) ? Num1 * Num2 : resultado;
               resultado = Objects.equals('/',num3) ? Num1 / Num2 : resultado;
               resultado = Objects.equals('%',num3) ? Num1 % Num2 : resultado;

        System.out.printf("%.2f %s %.2f = %.2f", Num1, num3, Num2, resultado);

        }
}
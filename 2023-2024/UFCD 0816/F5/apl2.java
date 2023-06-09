import java.util.Scanner;

public class apl2 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        double pc, alt, vlrIMC;
        System.out.printf("Indique o seu peso: ");
        pc = entrada.nextDouble();
        System.out.printf("Indique a sua altura: ");
        alt = entrada.nextDouble();
        System.out.printf("===============================\n");
        vlrIMC = IMC(pc, alt);
        System.out.printf("IMC = %.2f(%s)\n", vlrIMC, interpretacaoIMC(vlrIMC));
        System.out.printf("===============================\n");
    }

    private static double IMC(double pc, double alt) {
        return (pc / (alt * alt));
    }

    private static String interpretacaoIMC(double vlrIMC) {
        if (vlrIMC < 20)
            return ("Magro");
        else if ((vlrIMC >= 20) && (vlrIMC <= 24))
            return ("Normal");
        else if ((vlrIMC >= 25) && (vlrIMC <= 29))
            return ("Acima do peso");
        else if ((vlrIMC >= 30) && (vlrIMC <= 34))
            return ("Obeso");
        else
            return ("Muito Obeso");
    }
}

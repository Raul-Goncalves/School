import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        double notafinal;
        System.out.printf("Coloque a nota do aluno: ");
        notafinal = entrada.nextDouble();
        System.out.printf("Nota: %.2f - %s", notafinal,notaqualitativa(notafinal));
    }

    private static String notaqualitativa(double notalfinal) {
        if (notalfinal < 10)
            return ("Insuficiente");
        else if ((notalfinal >= 10) && (notalfinal <= 13))
            return ("Suficiente");
        else if ((notalfinal >= 13) && (notalfinal <= 16))
            return ("Bom");
        else if ((notalfinal >= 16) && (notalfinal <= 18))
            return ("Muito Bom");
        else
            return ("Excelente");
    }
}
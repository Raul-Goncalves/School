import java.util.Scanner;

public class EX5 {
        public static void main(String[] args) {

            Scanner entrada = new Scanner(System.in);
            int[] NotasAlunos = new int[5];
            int maisnota = 0, menosnota = 20;
            double somanotas = 0;

            for (int i = 0; i < 5; i++) {
                boolean notaValida = false;
                while (!notaValida) {
                    System.out.print("Digite a " + (i+1) + "ª nota (entre 1 e 20): ");
                    int notasaluninhos = entrada.nextInt();
                    if (notasaluninhos >= 1 && notasaluninhos <= 20) {
                        NotasAlunos[i] = notasaluninhos;
                        notaValida = true;
                        if (notasaluninhos > maisnota) {
                            maisnota = notasaluninhos;
                        }
                        if (notasaluninhos < menosnota) {
                            menosnota = notasaluninhos;
                        }
                        somanotas += notasaluninhos;
                    } else {
                        System.out.println("Nota inválida. Tente novamente.");
                    }
                }
            }
            double media = somanotas / 5;

            System.out.println("A maior nota é: " +  maisnota);
            System.out.println("A menor nota é: " + menosnota);
            System.out.println("A média das notas é: " + media);
        }
    }

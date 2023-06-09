import java.util.Scanner;

public class EX7 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Qual o número do aluno? ");
        int numero = entrada.nextInt();
        System.out.print("Qual o nome do aluno? ");
        String nome = entrada.next();
        double[] notas = new double[6];
        for (int i = 0; i < notas.length; i++) {
            System.out.print("Qual a nota " + (i+1) + " do aluno? ");
            notas[i] = entrada.nextDouble();
        }


        AlunoEX7 aluno = new AlunoEX7(numero, nome, notas);
        System.out.println("Dados do aluno:");
        System.out.println("Número: " + aluno.getNumero());
        System.out.println("Nome: " + aluno.getNome());
        aluno.ImprimeNotas();

        aluno.AlteraNota();
        System.out.println("Notas após a alteração:");
        aluno.ImprimeNotas();

        entrada.close();
    }
}


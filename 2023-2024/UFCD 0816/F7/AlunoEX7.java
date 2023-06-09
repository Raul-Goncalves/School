import java.util.Scanner;

public class AlunoEX7{
    private int numero;
    private String nome;
    private double[] notas;

    public AlunoEX7(int numero, String nome, double[] notas) {
        this.numero = numero;
        this.nome = nome;
        this.notas = notas;
    }

    public void ImprimeNotas() {
        System.out.print("Notas: ");
        for (int i = 0; i < notas.length; i++) {
            System.out.print(notas[i] + " ");
        }
        System.out.println();
    }

    public void AlteraNota() {
        Scanner entrada = new Scanner(System.in);
        System.out.print("Qual a posição da nota que deseja alterar (1 a 6)? ");
        int posicao = entrada.nextInt() - 1;
        System.out.print("Qual o novo valor da nota? ");
        double novaNota = entrada.nextDouble();
        notas[posicao] = novaNota;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double[] getNotas() {
        return notas;
    }

    public void setNotas(double[] notas) {
        this.notas = notas;
    }
}

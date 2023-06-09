public class EX2 {
    public static void fatorar(int numero) {
        int fator = 1;
        for (int i = numero; i > 1; i--)
            fator *= i;

        System.out.println(numero + "! = " + fator);
    }
    public static void main(String args[]) {
        for (int x=1; x<=10; x++)
            fatorar (x);

    }
}

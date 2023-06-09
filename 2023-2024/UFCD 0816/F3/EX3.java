public class EX3 {
    public static boolean ehPrimo(long nr) {
        if (nr < 2)
            return false;
        for (long i = 2; i < nr; i++)
        if (nr % i == 0)
            return false;

        return true;
    }
    public static void main(String[] args) {
        long x = 5;
        if (ehPrimo(x)) // se for primo
            System.out.println(x + " é primo");
        else // se não for primo
            System.out.println(x + " não é primo");
    }
}

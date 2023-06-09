import java.util.Arrays;

public class EX6 {
        public static void main(String[] args) {
            int[] valores = { 5, 3, 10, 1, 8, 2, 9, 4, 7, 6 };

            System.out.println("Array desorganizada:");
            for (int i = 0; i < valores.length; i++) {
                System.out.print(valores[i] + " ");
            }
            System.out.println();

            Arrays.sort(valores);

            System.out.println("Array organizado em ordem cresente:");
            for (int i = 0; i < valores.length; i++) {
                System.out.print(valores[i] + " ");
            }
            System.out.println();
        }
    }


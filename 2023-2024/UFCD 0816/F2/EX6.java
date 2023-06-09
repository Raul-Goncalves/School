import java.io.IOException;

public class EX6 {

    public static void main(String[] args) throws IOException {
         int inChar;

         System.out.println("Insira um caráter:");
         inChar=System.in.read();

         System.out.print("Introduziu: ");
         System.out.println((char)inChar);

    }
}

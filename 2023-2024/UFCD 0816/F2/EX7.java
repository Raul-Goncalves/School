public class EX7 {

    public static void main(String[] args) {

        String disciplina = "Sistema Orientados a Objetos I";
        System.out.println("Disciplinas" + disciplina);

        System.out.print("Primeiro caráter: ");
        System.out.println(disciplina.charAt(0));
        System.out.print("Segundo caráter: ");
        System.out.println(disciplina.charAt(1));

        char letra = disciplina.charAt(2);

        System.out.print("primeiras cinco letras: ");
        System.out.println(disciplina.substring(0,5));
        System.out.print("letras apartir da quarta:");
        System.out.println(disciplina.substring(4));

        System.out.print("Tamanho da frase: ");
        System.out.println(disciplina.length() + " letras");

        System.out.println(""
                + disciplina.length()
                + " letras"
                +"\n"
                +"Nova linha\ttabulação");

    }
}

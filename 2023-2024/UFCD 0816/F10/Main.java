import java.sql.SQLOutput;

public class Main {
    public static void main(String[] args) {

        Animal a = new Animal("Rei");
        Cavalo c = new Cavalo("Spirit",  "Puro Lusitano","3");
        Cachorro ch = new Cachorro("Lovito","Raul", "5");
        Preguica p = new Preguica("Lusinda","Floresta","9");


        System.out.printf(a.nome);
        a.vive();
        a.come();
        a.emiteSom();


        System.out.println("\nCAVALO:");
        System.out.println(c.nome);
        System.out.println(c.raca);
        c.vive();
        c.come();
        c.salta();
        c.emiteSom();

        System.out.println("\nCACHORRO:");
        System.out.println(ch.nome);
        System.out.println("Tenho " + ch.idade + " anos");
        System.out.println("Dono: " + ch.dono);
        ch.vive();
        ch.come();
        ch.som();
        ch.emiteSom();

        System.out.println("\nPREGUIÇA:");
        System.out.println(p.nome);
        System.out.println("Tenho " + p.idade + " anos");
        System.out.println("Meu habitat é: " + p.habitat);
        p.come();
        p.acao();
        p.emiteSom();
        p.vive();

        Veterinario.examinar(ch);
        Veterinario.examinar(p);
        Veterinario.examinar(c);
    }
}
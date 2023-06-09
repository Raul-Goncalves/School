public class Animal {

    String nome;

    Animal(String valorNome) {
        nome = valorNome;
    }

    void vive() {
        System.out.println("Vivo logo existo...");
    }

    void come() {
        System.out.println("Como para sobreviver.");
    }
    void emiteSom() {
        System.out.println("Emito som...");
    }
}
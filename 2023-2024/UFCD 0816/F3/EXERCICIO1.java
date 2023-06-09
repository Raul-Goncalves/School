/*
Exercício: Cria uma classe chamada Conta que possua os atributos numero, cliente, saldo
e limite. Cria uma instância da classe em que os atributos tenham os seguintes valores: 1,
José Beto, 1000, 5000. Imprime no ecrã o valor atual do saldo relativo ao cliente.
 */


public class EXERCICIO1 {

        int numero=1;
        String dono="José Betto";
        double saldo=1000;
        double limite=5000;
        public static void main(String[] args) {

            EXERCICIO1 ex12 = new EXERCICIO1();

            ex12.numero=1;
            ex12.dono="José Betto";
            ex12.saldo=1000;
            ex12.limite=5000;

            System.out.println("NUMERO DA CONTA: " + ex12.numero +
                               "TITULARDA CONTA: " + ex12.dono +
                               "SALDO DA CONTA: " + ex12.saldo);

    }
}


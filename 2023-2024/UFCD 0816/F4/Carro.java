public class Carro {

    public void  arrancar(){
        System.out.print("Estou a arrancar! ");
    }
    public void parar(){
        System.out.print("Estou parando!");

    }

    public  int rolar(int duracao){
        int distancia = duracao*60;
        System.out.println("Percorri: " + distancia + "Km.");
        return  distancia;
    }
    public static void main(String[] args) {

        int Totaldistancia=0;
        Carro meuCarro = new Carro();

        meuCarro.arrancar();
        Totaldistancia = Totaldistancia+meuCarro.rolar(1);
        Totaldistancia = Totaldistancia+ meuCarro.rolar(3);

        meuCarro.parar();

        System.out.println(" Distância total percorrida: " +Totaldistancia+"KM");

        CarroJamesBond cjb = new CarroJamesBond();

        System.out.print("\n=============================\n\n");

        cjb.arrancar();
        Totaldistancia = Totaldistancia+cjb.rolar(1);
        Totaldistancia = Totaldistancia+cjb.rolar(3);
    }
}
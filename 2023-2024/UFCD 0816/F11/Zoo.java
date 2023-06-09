public class Zoo {

    public static void main(String[] args) {
        Vaca v = new Vaca();
        Gato g = new Gato();
        Carneiro c = new Carneiro();
        Animal bichos[] = {v, g, c};

        for(int i=0 ; i < bichos.length ; i++)
        {
            if(bichos[i] instanceof Vaca){
                System.out.print("A vaca tem " +
                        bichos[i].numeroPatas + " patas e faz ");
                bichos[i].som();
                System.out.println();
            }
            if(bichos[i] instanceof Gato){
                System.out.print("O gato tem " +
                        bichos[i].numeroPatas + " patas e faz ");
                bichos[i].som();
                System.out.println();
            }
            if(bichos[i] instanceof Carneiro){
                System.out.print("O carneiro tem " +
                        bichos[i].numeroPatas + " patas e faz ");
                bichos[i].som();
                System.out.println();
            }
        }
    }
}

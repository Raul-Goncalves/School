public class TV {

    int canal,volume;
    boolean ligada;

    public TV(int canal, int volume, boolean ligada) {
        this.canal = canal;
        this.volume = volume;
        this.ligada = ligada;
    }

    public void AltVolume(int a){
        volume = a;

    }
    public void AltCanal(int a){
        canal = a;

    }
    public void LigaTV(boolean a){
        ligada = a;

    }
}

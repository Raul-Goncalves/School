public class Comida {



    public final String unidade_peso="g";
    public final String unidade_caloria="cal";
    public String designacao;
    public int calorias;
    public int gramas;


    public void setCalorias(int calorias) {
        this.calorias = calorias;
    }


    public Comida(String designacao) {
        this.designacao = designacao;
        this.calorias=12;
        this.gramas=100;

    }


    @Override
    public String toString() {
        return "Comida [unidade_peso=" + unidade_peso + ", unidade_caloria=" + unidade_caloria + ", designacao="
                + designacao + ", calorias=" + calorias + ", gramas=" + gramas + "]";
    }


    public void setGramas(int gramas) {
        this.gramas = gramas;
    }


    public String getUnidade_peso() {
        return unidade_peso;
    }


    public String getUnidade_caloria() {
        return unidade_caloria;
    }


    public String getDesignacao() {
        return designacao;
    }


    public int getCalorias() {
        return calorias;
    }


    public int getGramas() {
        return gramas;
    }


    public Comida(String designacao, int calorias, int gramas) {
        super();
        this.designacao = designacao;
        this.calorias = calorias;
        this.gramas = gramas;
    }

}

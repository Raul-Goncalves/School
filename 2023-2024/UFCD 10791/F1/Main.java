import java.sql.Connection;

public class Main  {

    public static void main(String[] args) {

        ConnectLigacao obterligacao = new ConnectLigacao();
        Connection con = obterligacao.Ol();

        obterligacao.fecharLigacao(con);
    }
}
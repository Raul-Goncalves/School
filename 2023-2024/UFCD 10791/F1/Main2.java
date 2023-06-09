import java.sql.*;

public class Main2 {
    public static void main(String[] args) {

        ConnectLigacao obterligacao = new ConnectLigacao();
        Connection con = obterligacao.Ol();

        try{
            Statement stm = con.createStatement();
            ResultSet res = stm.executeQuery("SELECT * FROM editoras");
            while(res.next()){
                System.out.print("Código da Editora: " + res.getInt("CodEditora"));
                System.out.print(" Nome da Editora: " + res.getString("NomeEditora")+"\n");
            }
        }
        catch(SQLException sqle){
            System.out.println("SQlExeption");
        }

        obterligacao.fecharLigacao(con);
    }
}

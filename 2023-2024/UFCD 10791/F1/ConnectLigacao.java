import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectLigacao {

    public Connection Ol(){
        System.out.println("Testar o acesso a BD MYSQL");
        Connection  con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost/vendascd_utf8", "root", "");
            System.out.println("Ligação feita com Sucesso");
        }

        catch (ClassNotFoundException cnfe){
            System.out.println("ClassNotFoundException");
        }
        catch (SQLException sqle){
            System.out.println(sqle.getMessage());
        }
        return  con;
    }

    public void fecharLigacao(Connection con){

        try{
            con.close();
            System.out.println("A sua ligação está fechada!");
        }
        catch (SQLException sqle){
            System.out.println("SQLException");
        }

    }
}

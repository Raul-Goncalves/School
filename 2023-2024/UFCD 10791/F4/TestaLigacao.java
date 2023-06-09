import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class TestaLigacao {

public Connection OL(){
System.out.println("Testar o acesso a BD MySQL");
Connection con=null;
try{

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost/Agenda", "root", "");
System.out.println("Ligação efetuada com sucesso");
}


catch(ClassNotFoundException cnfe){

System.out.println("ClassNotFoundException");
}



catch(SQLException sqle){
System.out.println( sqle.getMessage());
}
return con;
}

public void FecharLigacao(Connection con){
try{
con.close();
System.out.println("\nLigação fechada com sucesso!");
}
catch(SQLException sqle){
System.out.println("SQlExeption");

}}}
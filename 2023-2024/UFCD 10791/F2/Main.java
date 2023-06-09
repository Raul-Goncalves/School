import java.sql.*;

public class Main {
    public static void main(String[] args) throws SQLException {

    ConnectLigacao obterligacao = new ConnectLigacao();
    Connection con = obterligacao.Ol();


        try{
            Statement stm = con.createStatement();

    /*           String sql =  "CREATE TABLE produtos " +
                    "(codigo INTEGER not NULL AUTO_INCREMENT, " +
                    " nome VARCHAR(255), " +
                    " preco_s_iva FLOAT, " +
                    " taxa_iva FLOAT, " +
                    " preco_c_iva DECIMAL(3,2), " +
                  " PRIMARY KEY ( codigo ))";

                String sql = "INSERT INTO produtos VALUES (NULL,'ProdutoA', 50.0, 0.21,0),(NULL,'ProdutoB', 40.0, 0.21,0),(NULL,'ProdutoC', 50.0, 0.6,0)";

               5.A String sql = "UPADATE produtos SET taxa_iva = 0.23 WHERE taxa_iva  = 0.21";

               5.B String sql = "DELETE FROM produtos WHERE codigo = 2";

               5.C String sql = "UPDATE produtos = prco_c_iva+preco_s_iva*taxa_iva";

        //  stm.executeUpdate(sql);

           6.a String sql = "SELECT nome, CONCAT('€', FORMAT(price, 2)), CONCAT(FORMAT(iva_rate * 100, 2), '%') "FROM produtos";
                ResultSet resultSet = stm.executeQuery(sql);

            System.out.println("Nome do produto\tPreço\tIVA");
            while (resultSet.next()) {
                String name = resultSet.getString(1);
                String price = resultSet.getString(2);
                String ivaRate = resultSet.getString(3);
                System.out.printf("%s\t%s\t%s\n", nome, preco_s_iva, tax_iva);
    */
            System.out.println("A 'produtos' criada com sucesso");

        }
        catch (SQLException sqle){
            System.out.println("ERRO:" + sqle.getMessage());
        }


        obterligacao.fecharLigacao(con);
    }
}
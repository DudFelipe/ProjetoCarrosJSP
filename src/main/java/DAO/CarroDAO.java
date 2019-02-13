package DAO;

import Models.Carro;
import Utils.ConnectionUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarroDAO {
    public static void inserir(Carro c) throws SQLException, Exception{
        String sql = "INSERT INTO Carros (nome, marca, ano, preco, categoria, imagem) "
                + "VALUES (?, ?, ?, ?, ?, ?);";
        
        Connection conn = null;
        PreparedStatement pst = null;
        
        try{
            conn = ConnectionUtils.getConnection();
            pst = conn.prepareStatement(sql);
            
            pst.setString(1, c.getNome());
            pst.setString(2, c.getMarca());
            pst.setInt(3, c.getAno());
            pst.setDouble(4, c.getPreco());
            pst.setString(5, c.getCategoria() + "");
            pst.setString(6, c.getImagem());
            
            pst.execute();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        finally{
            if(pst != null && !pst.isClosed())
                pst.close();
            
            if(conn != null && !conn.isClosed())
                conn.close();
        }
    }
    
    public static List<Carro> listarPopulares() throws SQLException, Exception{
        String sql = "SELECT * FROM Carros WHERE Categoria = 'P';";
        
        Connection conn = null;
        PreparedStatement pst = null;
        
        List<Carro> listaCarro = new ArrayList<Carro>();
        try{
            conn = ConnectionUtils.getConnection();
            pst = conn.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                Carro c = new Carro();
                
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setMarca(rs.getString("marca"));
                c.setAno(rs.getInt("ano"));
                c.setPreco(rs.getDouble("preco"));
                c.setCategoria(rs.getString("categoria").charAt(0));
                c.setImagem(rs.getString("imagem"));
                
                listaCarro.add(c);
            }
            
            return listaCarro;
        }
        catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
    }
}

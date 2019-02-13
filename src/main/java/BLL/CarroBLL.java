package BLL;

import DAO.CarroDAO;
import Models.Carro;
import java.util.List;

/**
 *
 * @author Dud Felipe
 */
public class CarroBLL {
    public static void inserir(Carro c) throws Exception{
        if(c.getNome().trim().length() == 0){
            throw new Exception("O campo nome é obrigatório!");
        }
        else if(c.getAno() <= 1900){
            throw new Exception("Ano inválido!");
        }
        else if(c.getMarca().trim().length() == 0){
            throw new Exception("O campo marca é obrigatório!");
        }
        else if(c.getPreco() <= 0){
            throw new Exception("O preço digitado é inválido!");
        }
        else if(c.getCategoria() != 'L' && c.getCategoria() != 'P'){
            throw new Exception("Categoria inválida!");
        }
        else{
            CarroDAO.inserir(c);
        }
    }
    
    public static List<Carro> listarPopulares() throws Exception{
        return CarroDAO.listarPopulares();
    }
}

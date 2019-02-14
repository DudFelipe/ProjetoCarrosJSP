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
    
    public static void alterar(Carro c) throws Exception{
        CarroDAO.alterar(c);
    }
    
    public static void excluir(int id) throws Exception{
        CarroDAO.excluir(id);
    }
    
    public static Carro obterCarro(int id) throws Exception{
        return CarroDAO.obterCarro(id);
    }
    
    public static List<Carro> listar(char categoria) throws Exception{
        return CarroDAO.listar(categoria);
    }
}

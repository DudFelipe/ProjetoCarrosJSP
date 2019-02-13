package Servlets;

import BLL.CarroBLL;
import Models.Carro;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dud Felipe
 */
@WebServlet(name = "CadastroServlet", urlPatterns = {"/CadastroServlet"})
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cadastrar.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Carro c = new Carro();
        
        if(request.getParameter("nome").trim().length() > 0){
            c.setNome(request.getParameter("nome"));
        }
        else{
            request.setAttribute("erroNome", "O campo nome é obrigatório!");
        }
        
        if(request.getParameter("marca").trim().length() > 0){
            c.setMarca(request.getParameter("marca"));
        }
        else{
            request.setAttribute("erroMarca", "O campo marca é obrigatório!");
        }
        
        if(request.getParameter("ano").trim().length() > 0){
            c.setAno(Integer.parseInt(request.getParameter("ano")));
        }
        else{
            request.setAttribute("erroAno", "O ano informado é inválido!");
        }
        
        if(request.getParameter("preco").trim().length() > 0){
            c.setPreco(Double.parseDouble(request.getParameter("preco")));
        }
        else{
            request.setAttribute("erroPreco", "O preço informado é inválido!");
        }
        
        if(request.getParameter("categoria").trim().length() > 0){
            c.setCategoria(request.getParameter("categoria").charAt(0));
        }
        else{
            request.setAttribute("erroCategoria", "Selecione uma categoria!");
        }
        
        String caminho = "C:/Users/Dud Felipe/Desktop/Estagio/Nova Pasta/ProjetoCarrosJSP/src/main/webapp/assets/Imagens/";
        c.setImagem(caminho + request.getParameter("imagem"));
        
        RequestDispatcher dispatcher;
        
        try{
            CarroBLL.inserir(c);
            
            dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
            dispatcher.forward(request, response);
        }
        catch(Exception ex){
            ex.printStackTrace();
            
            dispatcher = request.getRequestDispatcher("/WEB-INF/cadastrar.jsp");
            dispatcher.forward(request, response);
        }
    }
}

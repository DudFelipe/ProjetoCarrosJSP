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
@WebServlet(name = "AlterarCarroServlet", urlPatterns = {"/AlterarCarroServlet"})
public class AlterarCarroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Carro c = new Carro();
        
        try{
            c = CarroBLL.obterCarro(id);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        request.setAttribute("c", c);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/cadastrar.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        char categoria = request.getParameter("categoria").charAt(0);
        
        Carro c = new Carro();
        
        try{
            c = CarroBLL.obterCarro(id);
            
            c.setNome(request.getParameter("nome"));
            c.setMarca(request.getParameter("marca"));
            c.setAno(Integer.parseInt(request.getParameter("ano")));
            c.setPreco(Double.parseDouble(request.getParameter("preco")));
            c.setCategoria(request.getParameter("categoria").charAt(0));
            c.setImagem(request.getParameter("imagem"));
            
            CarroBLL.alterar(c);
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        if(categoria == 'P'){
            response.sendRedirect(request.getContextPath() + "/ListarServlet?categoria=P");
        }
        else if(categoria == 'L'){
            response.sendRedirect(request.getContextPath() + "/ListarServlet?categoria=L");
        }
    }
}

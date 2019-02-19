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
@WebServlet(name = "DetalheServlet", urlPatterns = {"/DetalheServlet"})
public class DetalheServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            int id = Integer.parseInt(request.getParameter("id"));
            
            Carro c = new Carro();
            
            try{
                c = CarroBLL.obterCarro(id);
                
                request.setAttribute("carro", c);
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/detalhe.jsp");
                dispatcher.forward(request, response);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }
}

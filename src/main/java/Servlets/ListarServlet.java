package Servlets;

import BLL.CarroBLL;
import Models.Carro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "ListarServlet", urlPatterns = {"/ListarServlet"})
public class ListarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Carro> carros = null;
        
        try{
            char categoria = request.getParameter("categoria").charAt(0);
            carros = CarroBLL.listar(categoria);
        
            request.setAttribute("carros", carros);
            
            if(categoria == 'P'){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/populares.jsp");
                dispatcher.forward(request, response);
            }
            else if(categoria == 'L'){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/luxo.jsp");
                dispatcher.forward(request, response);
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}

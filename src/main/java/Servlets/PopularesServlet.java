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
@WebServlet(name = "PopularesServlet", urlPatterns = {"/PopularesServlet"})
public class PopularesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Carro> carros = null;
        
        try{
            carros = CarroBLL.listarPopulares();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        request.setAttribute("carros", carros);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/populares.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}

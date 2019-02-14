package Servlets;

import BLL.CarroBLL;
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
@WebServlet(name = "ExcluirCarroServlet", urlPatterns = {"/ExcluirCarroServlet"})
public class ExcluirCarroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        char categoria = request.getParameter("categoria").charAt(0);
        
        try{
            CarroBLL.excluir(id);
            
            RequestDispatcher dispatcher = null;
            
            if(categoria == 'P'){
                response.sendRedirect(request.getContextPath() + "/ListarServlet?categoria=P");
            }
            else if(categoria == 'L'){
                response.sendRedirect(request.getContextPath() + "/ListarServlet?categoria=L");
            }
            
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

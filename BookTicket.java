package pvt.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pvt.modules.Ticket;
import pvt.modules.User;

import java.io.IOException;

@WebServlet(name="BookTicket",urlPatterns = {"/BookTicket"})
public class BookTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BookTicket() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

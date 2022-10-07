package pvt.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pvt.database.FlightManagement;
import pvt.modules.Flight;
import pvt.modules.Level_Two;
import pvt.modules.StaffMember;

import java.io.IOException;

@WebServlet(name="AddNewFlight",urlPatterns = {"/AddNewFlight"})
public class AddNewFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddNewFlight() {
        super();
        
    }

	
}

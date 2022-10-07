package pvt.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pvt.database.UserManagement;
import pvt.modules.Level_One;
import pvt.modules.Level_Two;
import pvt.modules.StaffMember;
import pvt.modules.User;

import java.io.IOException;

@WebServlet(name="addNewStaff",urlPatterns = {"/addNewStaff"})
public class AddNewStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddNewStaff() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

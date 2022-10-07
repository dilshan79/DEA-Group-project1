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

@WebServlet(name = "Registration",urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Registration() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserManagement um=new UserManagement();
		int result=0;
		if(request.getParameter("user") != null) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String address=request.getParameter("address");
			String role=request.getParameter("role");
			String dob=request.getParameter("dob");

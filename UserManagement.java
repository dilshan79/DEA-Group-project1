package pvt.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pvt.modules.StaffMember;
import pvt.modules.User;
public class UserManagement {
	DbConnection db=new DbConnection();
	private Connection con =db.getConnection();
	
	public int addNewStaffMember(StaffMember stm) {
		int result=0;
		try {
			String query="insert into user(name,email,password,dob,address,role,status) values(?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(query);
			
			st.setString(1, stm.getName());
			st.setString(2, stm.getEmail());
			st.setString(3, stm.getPassword());
			st.setString(4, stm.getDob());
			st.setString(5, stm.getAddress());
			st.setString(6, stm.getRole());
			st.setString(7, stm.getAcc_status());
			
			result=st.executeUpdate();
			
			
		}
		catch(SQLException ex) {
			System.out.println(ex.getMessage());
		}
		System.out.println(result);
		return result;
	}
	
	public int addNewUser(User user) {
		int result=0;
		try {
			String query="insert into user(name,email,password,dob,address,role) values(?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(query);
			
			st.setString(1, user.getName());
			st.setString(2, user.getEmail());
			st.setString(3, user.getPassword());
			st.setString(4, user.getDob());
			st.setString(5, user.getAddress());
			st.setString(6, user.getRole());
			
			result=st.executeUpdate();
			
			
		}
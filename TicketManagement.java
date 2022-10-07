package pvt.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pvt.modules.Ticket;

public class TicketManagement {
	DbConnection db=new DbConnection();
	private Connection con =db.getConnection();
	
	public int generateTicket(Ticket ticket) {
		int result=0;
		try {
			String query="insert into ticket_booking(numberOfSeats,email,flightId) values(?,?,?);";
			PreparedStatement st=con.prepareStatement(query);
			
			st.setInt(1, ticket.getNumberOfSeats());
			st.setString(2, ticket.getEmail());
			st.setInt(3, ticket.getFlightId());
	
			result=st.executeUpdate();
		}
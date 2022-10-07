package pvt.modules;

public class Flight {
	private int id;
	private String flightNumber;
	private String departTime;
	
	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
	public String getFlightNumber() {
		return flightNumber;
	}
	public String getDepartTime() {
		return departTime;
	}
	public void setDepartTime(String departTime) {
		this.departTime = departTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
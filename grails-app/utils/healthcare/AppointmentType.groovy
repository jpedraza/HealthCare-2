package healthcare

public enum AppointmentType {
	AppointmentType1(1),
	AppointmentType2(2)
	
	private int appointmentType
	
	public AppointmentType(int appointmentType) {
		this.appointmentType = appointmentType
	}
	
	def getAppointmentType() {
		appointmentType
	}
}

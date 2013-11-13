package healthcare

class Appointment {
	
	Date appointmentDate
	AppointmentType appointmentType
	String note
	
	static hasOne = [patient: Patient, doctor: Staff]

    static constraints = {
    }
}

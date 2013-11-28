package healthcare

class Appointment implements Comparable {
	
	Date appointmentDate
	AppointmentType appointmentType
	String note
	
	static hasOne = [patient: Patient, doctor: Staff]

    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
	
}

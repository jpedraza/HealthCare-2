package healthcare

import java.util.SortedSet;

import security.User
import healthcare.Speciality

class Staff extends User {
	
	String identification
	
	Speciality speciality
	
	SortedSet appointments
	static hasMany = [appointments: Appointment]

    static constraints = {
		identification(unique: true)
		appointments(nullable: true)
    }
}

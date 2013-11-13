package healthcare

import security.User
import healthcare.Speciality

class Staff extends User {
	
	String identification
	
	Speciality Speciality
	
	static hasMany = [appointments: Appointment]

    static constraints = {
		identification(unique: true)
    }
}

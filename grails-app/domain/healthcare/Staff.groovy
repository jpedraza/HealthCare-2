package healthcare

import security.Role
import security.User
import security.UserRole

class Staff extends User {
	
	String identification
	
	Speciality speciality
	
	SortedSet appointments
	static hasMany = [appointments: Appointment]

    static constraints = {
		identification(unique: true)
		appointments(nullable: true)
    }
	
	def afterInsert() {
		def userRole = Role.findOrCreateWhere(
				authority: 'ROLE_ADMIN'
		)
		UserRole.create this, userRole, false
	}
}

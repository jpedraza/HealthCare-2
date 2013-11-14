package healthcare

import security.User
import security.Role
import security.UserRole

class Patient extends User {

	String identification

	static hasMany = [appointments: Appointment, prescriptions: Prescription, diagnosis: Diagnosis,
		allergies: Allergy, medicalTests: MedicalTest, ncds: NCD]

	static constraints = {
		identification(unique: true)
		appointments(nullable: true)
		prescriptions(nullable: true)
		diagnosis(nullable: true)
		allergies(nullable: true)
		medicalTests(nullable: true)
		ncds(nullable: true)
	}

	def afterInsert() {
		def userRole = Role.findOrCreateWhere(
				authority: 'ROLE_USER'
		)		
		UserRole.create this, userRole, false
	}
}

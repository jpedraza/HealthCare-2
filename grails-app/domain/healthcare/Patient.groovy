package healthcare

import security.User

class Patient extends User {

	String identification

	static hasMany = [appointments: Appointment, prescriptions: Prescription, diagnosis: Diagnosis,
		allergies: Allergy, medicalTests: MedicalTest, ncds: NCD]

	static constraints = { 
		identification(unique: true)
	}
}

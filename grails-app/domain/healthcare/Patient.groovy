package healthcare

import security.User
import security.Role
import security.UserRole

class Patient extends User {

	String identification

	SortedSet appointments, prescriptions, diagnosis, allergies, medicalTests
	static hasMany = [appointments: Appointment, prescriptions: Prescription, diagnosis: Diagnosis,
		allergies: Allergy, medicalTests: MedicalTest, ncds: NCD]
	
	static transients = ['bloodPressures', 'diabetes', 'weights']

	static constraints = {
		identification(unique: true)
		appointments(nullable: true)
		prescriptions(nullable: true)
		diagnosis(nullable: true)
		allergies(nullable: true)
		medicalTests(nullable: true)
		ncds(nullable: true)
	}
	
	def getBloodPressures() {
		return BloodPressure.findAllByPatient(this)
	}
	
	def getDiabetes() {
		return Diabetes.findAllByPatient(this)
	}
	
	def getWeights() {
		return Obesity.findAllByPatient(this)
	}
}

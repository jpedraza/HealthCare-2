package healthcare

class MedicalTest {
	
	String medicalTest
	Integer code
	Date medicalTestDate
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
}

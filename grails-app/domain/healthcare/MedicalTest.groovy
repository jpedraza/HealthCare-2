package healthcare

class MedicalTest implements Comparable{
	
	String medicalTest
	Integer code
	Date medicalTestDate
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
}

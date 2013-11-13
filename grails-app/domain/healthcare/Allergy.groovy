package healthcare

class Allergy {
	
	String allergy
	String reaction
	Date allergyDate
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
}

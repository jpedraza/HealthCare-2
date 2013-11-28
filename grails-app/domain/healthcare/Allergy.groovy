package healthcare

class Allergy implements Comparable{
	
	String allergy
	String reaction
	Date allergyDate
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
}

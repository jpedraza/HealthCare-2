package healthcare

abstract class NCD implements Comparable{
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
}

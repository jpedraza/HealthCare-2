package healthcare

class Prescription implements Comparable{
	
	String medicine
	String concentrate
	String quantity
	Use use;
	String instructions		
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
}

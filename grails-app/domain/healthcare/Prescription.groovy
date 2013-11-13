package healthcare

class Prescription {
	
	String medicine
	String concentrate
	String quantity
	Use use;
	String instructions		
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
}

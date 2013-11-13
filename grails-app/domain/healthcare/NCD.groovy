package healthcare

abstract class NCD {
	
	static hasOne = [patient: Patient]

    static constraints = {
    }
}

package healthcare

class Diagnosis {
	
	String diagnosis
	Integer code
	Date diagnosisDate
	DiagnosisStatus diagnosisStatus
	
	static hasOne = [patient: Patient]
	

    static constraints = {
    }
}

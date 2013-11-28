package healthcare

class Diagnosis implements Comparable{
	
	String diagnosis
	Integer code
	Date diagnosisDate
	DiagnosisStatus diagnosisStatus
	
	static hasOne = [patient: Patient]
	
    static constraints = {
    }
	
	int compareTo(obj) {
		id.compareTo(obj.id)
	}
}

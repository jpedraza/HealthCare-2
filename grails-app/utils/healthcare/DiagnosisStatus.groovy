package healthcare

public enum DiagnosisStatus {
	DiagnosisStatus1(1),
	DiagnosisStatus2(2)
	
	private int diagnosisStatus
	
	public DiagnosisStatus(int diagnosisStatus) {
		this.diagnosisStatus = diagnosisStatus
	}
	
	def getDiagnosisStatus() {
		diagnosisStatus
	}
}

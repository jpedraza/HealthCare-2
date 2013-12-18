package healthcare

public enum Speciality {
	Speciality1(1),
	Speciality2(2)
	
	private int speciality
	
	public Speciality(int speciality) {
		this.speciality = speciality
	}
	
	def getSpeciality() {
		speciality
	}
}

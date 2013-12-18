package healthcare

public enum Gender {
	MALE(1),
	FEMALE(2)
	
	private int gender
	
	public Gender(int gender) {
		this.gender = gender
	}
	
	def getGender() {
		gender
	}
}

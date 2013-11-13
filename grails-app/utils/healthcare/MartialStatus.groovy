package healthcare

public enum MartialStatus {
	Single(1),
	Marriage(2)
	
	private int martialStatus
	
	public MartialStatus(int martialStatus) {
		this.martialStatus = martialStatus
	}
	
	def getMartialStatus() {
		martialStatus
	}
}

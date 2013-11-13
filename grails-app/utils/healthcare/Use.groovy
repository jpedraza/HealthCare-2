package healthcare

public enum Use {
	Use1(1),
	Use2(2)
	
	private int use
	
	public Use(int use) {
		this.use = use
	}
	
	def getUse() {
		use
	}
}

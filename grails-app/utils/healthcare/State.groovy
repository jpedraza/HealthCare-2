package healthcare

public enum State {
	MinasGerais(1),
	SaoPaulo(2)
	
	private int state
	
	public State(int state) {
		this.state = state
	}
	
	def getState() {
		state
	}

}

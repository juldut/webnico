package webnico

class TempCatatan {

	String catatan

	static mapping = {
		id name: "catatan", generator: "assigned"
		version false
	}

	static constraints = {
		catatan nullable: true
	}
}

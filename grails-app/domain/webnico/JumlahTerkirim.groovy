package webnico

class JumlahTerkirim {

	Double sum

	static mapping = {
		id name: "sum", generator: "assigned"
		version false
	}

	static constraints = {
		sum nullable: true, scale: 17
	}
}

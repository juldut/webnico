package webnico

class TableLogPrint {

	String nomorTransaksi
	String username
	Date printDate

	static mapping = {
		id column: "pk", generator: "assigned"
		version false
	}

	static constraints = {
		nomorTransaksi nullable: true, maxSize: 20
		username nullable: true, maxSize: 50
		printDate nullable: true
	}
}

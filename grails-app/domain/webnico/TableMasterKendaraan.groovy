package webnico

class TableMasterKendaraan {

	String nopol
	String merk
	String tipeModel

	static mapping = {
		id name: "nopol", generator: "assigned"
		version false
	}

	static constraints = {
		nopol maxSize: 10
		merk nullable: true, maxSize: 100
		tipeModel nullable: true, maxSize: 100
	}
}

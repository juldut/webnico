package webnico

class TableHeaderKwitansi {

	String nomorHeaderKwitansi
	Date tanggalTertera
	Integer idCustomer
	String namaCustomer
	Date tanggalSystem
	String username
	Double totalKwitansi
	Boolean printed

	static mapping = {
		id name: "nomorHeaderKwitansi", generator: "assigned"
		version false
	}

	static constraints = {
		nomorHeaderKwitansi maxSize: 15
		tanggalTertera nullable: true
		idCustomer nullable: true
		namaCustomer nullable: true, maxSize: 100
		tanggalSystem nullable: true
		username nullable: true, maxSize: 30
		totalKwitansi nullable: true, scale: 17
		printed nullable: true
	}
}

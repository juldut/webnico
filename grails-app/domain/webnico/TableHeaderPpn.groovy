package webnico

class TableHeaderPpn {

	String nomorHeaderPpn
	Date tanggalTertera
	Integer idCustomer
	String namaCustomer
	Date tanggalSystem
	String username
	String nomorHeaderInvoice
	Double totalDpp
	Double totalPpn
	String namaNpwp
	String nomorNpwp
	String alamatNpwp
	Boolean printed

	static mapping = {
		id name: "nomorHeaderPpn", generator: "assigned"
		version false
	}

	static constraints = {
		nomorHeaderPpn maxSize: 20
		tanggalTertera nullable: true
		idCustomer nullable: true
		namaCustomer nullable: true, maxSize: 100
		tanggalSystem nullable: true
		username nullable: true, maxSize: 30
		nomorHeaderInvoice nullable: true, maxSize: 15
		totalDpp nullable: true, scale: 17
		totalPpn nullable: true, scale: 17
		namaNpwp nullable: true, maxSize: 100
		nomorNpwp nullable: true, maxSize: 25
		alamatNpwp nullable: true
		printed nullable: true
	}
}

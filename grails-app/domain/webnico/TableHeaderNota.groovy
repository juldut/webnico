package webnico

class TableHeaderNota {

	String nomorHeaderNota
	Date tanggalTertera
	Integer idCustomer
	String namaCustomer
	Date tanggalSystem
	String username
	String nomorHeaderSalesOrder
	Double totalNota
	Date jatuhTempo
	Boolean printed

	static mapping = {
		id name: "nomorHeaderNota", generator: "assigned"
		version false
	}

	static constraints = {
		nomorHeaderNota maxSize: 15
		tanggalTertera nullable: true
		idCustomer nullable: true
		namaCustomer nullable: true, maxSize: 100
		tanggalSystem nullable: true
		username nullable: true, maxSize: 30
		nomorHeaderSalesOrder nullable: true, maxSize: 15
		totalNota nullable: true, scale: 17
		jatuhTempo nullable: true
		printed nullable: true
	}
}

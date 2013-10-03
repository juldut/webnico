package webnico

class TableHeaderInvoice {

	String nomorHeaderInvoice
	Date tanggalTertera
	Integer idCustomer
	String namaCustomer
	Date tanggalSystem
	String username
	String nomorHeaderSalesOrder
	Double totalDpp
	Double totalPpn
	Double totalInvoice
	Date jatuhTempo
	Boolean printed

	static mapping = {
		id name: "nomorHeaderInvoice", generator: "assigned"
		version false
	}

	static constraints = {
		nomorHeaderInvoice maxSize: 15
		tanggalTertera nullable: true
		idCustomer nullable: true
		namaCustomer nullable: true, maxSize: 100
		tanggalSystem nullable: true
		username nullable: true, maxSize: 30
		nomorHeaderSalesOrder nullable: true, maxSize: 15
		totalDpp nullable: true, scale: 17
		totalPpn nullable: true, scale: 17
		totalInvoice nullable: true, scale: 17
		jatuhTempo nullable: true
		printed nullable: true
	}
}

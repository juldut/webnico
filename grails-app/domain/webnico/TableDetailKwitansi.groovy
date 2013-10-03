package webnico

class TableDetailKwitansi {

	String nomorDetailKwitansi
	String nomorHeaderKwitansi
	String nomorInvoice
	Double totalInvoice

	static mapping = {
		id name: "nomorDetailKwitansi", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailKwitansi maxSize: 15
		nomorHeaderKwitansi nullable: true, maxSize: 15
		nomorInvoice nullable: true, maxSize: 15
		totalInvoice nullable: true, scale: 17
	}
}

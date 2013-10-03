package webnico

class TableDetailInvoice {

	String nomorDetailInvoice
	String nomorHeaderInvoice
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan
	String nomorHeaderSuratJalan

	static mapping = {
		id name: "nomorDetailInvoice", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailInvoice maxSize: 20
		nomorHeaderInvoice nullable: true, maxSize: 15
		idBarang nullable: true
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
		nomorHeaderSuratJalan nullable: true, maxSize: 15
	}
}

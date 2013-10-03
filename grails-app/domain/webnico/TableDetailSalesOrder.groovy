package webnico

class TableDetailSalesOrder {

	String nomorDetailSalesOrder
	String nomorHeaderSalesOrder
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan

	static mapping = {
		id name: "nomorDetailSalesOrder", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailSalesOrder maxSize: 20
		nomorHeaderSalesOrder maxSize: 15
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
	}
}

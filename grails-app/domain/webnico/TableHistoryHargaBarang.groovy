package webnico

class TableHistoryHargaBarang {

	Integer idCustomer
	Integer idBarang
	BigDecimal harga
	Date tanggal
	String satuan

	static mapping = {
		id column: "id_history_harga_barang", generator: "assigned"
		version false
	}

	static constraints = {
		idCustomer nullable: true
		idBarang nullable: true
		harga nullable: true
		tanggal nullable: true
		satuan nullable: true, maxSize: 30
	}
}

package webnico

class TableMasterBarang {

	String namaBarang
	String satuan

	static mapping = {
		id column: "id_barang", generator: "assigned"
		version false
	}

	static constraints = {
		namaBarang nullable: true, maxSize: 100, unique: true
		satuan nullable: true, maxSize: 30
	}
}

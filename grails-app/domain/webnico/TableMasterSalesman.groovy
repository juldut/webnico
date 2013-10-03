package webnico

class TableMasterSalesman {

	String namaSalesman
	String alamatSalesman
	Date tanggalLahir
	String telepon1
	String telepon2

	static mapping = {
		id column: "id_salesman", generator: "assigned"
		version false
	}

	static constraints = {
		namaSalesman maxSize: 50
		alamatSalesman nullable: true, maxSize: 100
		tanggalLahir nullable: true
		telepon1 nullable: true, maxSize: 15
		telepon2 nullable: true, maxSize: 15
	}
}

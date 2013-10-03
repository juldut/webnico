package webnico

class TableMasterCustomer {

	String namaCustomer
	String alamatCustomer
	String nomorNpwp
	String namaNpwp
	String alamatNpwp
	String telepon
	String fax
	String kota
	String propinsi

	static mapping = {
		id column: "id_customer", generator: "assigned"
		version false
	}

	static constraints = {
		namaCustomer nullable: true, maxSize: 100, unique: true
		alamatCustomer nullable: true
		nomorNpwp nullable: true, maxSize: 25
		namaNpwp nullable: true, maxSize: 100
		alamatNpwp nullable: true
		telepon nullable: true, maxSize: 15
		fax nullable: true, maxSize: 15
		kota nullable: true, maxSize: 50
		propinsi nullable: true, maxSize: 50
	}
}

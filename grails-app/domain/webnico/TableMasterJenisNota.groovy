package webnico

class TableMasterJenisNota {

	String kode
	String keterangan

	static mapping = {
		id name: "kode", generator: "assigned"
		version false
	}

	static constraints = {
		kode maxSize: 2
		keterangan nullable: true, maxSize: 25
	}
}

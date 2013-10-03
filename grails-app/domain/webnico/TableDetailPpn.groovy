package webnico

class TableDetailPpn {

	String nomorDetailPpn
	String nomorHeaderPpn
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan

	static mapping = {
		id name: "nomorDetailPpn", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailPpn maxSize: 25
		nomorHeaderPpn nullable: true, maxSize: 20
		idBarang nullable: true
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
	}
}

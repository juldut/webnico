package webnico

class TableDetailSuratJalan {

	String nomorDetailSuratJalan
	String nomorHeaderSuratJalan
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan

	static mapping = {
		id name: "nomorDetailSuratJalan", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailSuratJalan maxSize: 20
		nomorHeaderSuratJalan nullable: true, maxSize: 15
		idBarang nullable: true
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
	}
}

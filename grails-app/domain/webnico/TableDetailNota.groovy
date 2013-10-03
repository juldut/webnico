package webnico

class TableDetailNota {

	String nomorDetailNota
	String nomorHeaderNota
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan
	String nomorHeaderSuratJalan

	static mapping = {
		id name: "nomorDetailNota", generator: "assigned"
		version false
	}

	static constraints = {
		nomorDetailNota maxSize: 20
		nomorHeaderNota nullable: true, maxSize: 15
		idBarang nullable: true
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
		nomorHeaderSuratJalan nullable: true, maxSize: 15
	}
}

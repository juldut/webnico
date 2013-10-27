package webnico

class TableDetailSuratJalan {

	String nomorHeaderSuratJalan
	Integer idBarang
	String namaBarang
	Double hargaBarang
	Double jumlahBarang
	String satuan
	String nomorDetailSuratJalan
	TableHeaderSuratJalan tableHeaderSuratJalan

	static belongsTo = [TableHeaderSuratJalan]

	static mapping = {
		id column: "dtsj_id", generator: "sequence", params: [sequence: "table_detail_surat_jalan_dtsj_id_seq"]
		version false
		tableHeaderSuratJalan column: "hdsj_id"
	}

	static constraints = {
		nomorHeaderSuratJalan nullable: true, maxSize: 15
		idBarang nullable: true
		namaBarang nullable: true, maxSize: 100
		hargaBarang nullable: true, scale: 17
		jumlahBarang nullable: true, scale: 17
		satuan nullable: true, maxSize: 30
		nomorDetailSuratJalan maxSize: 20
	}

	String toString() {
		return(namaBarang + " - " + jumlahBarang)
	}
}

package webnico

class TableHeaderSuratJalan {

	String nomorHeaderSuratJalan
	Date tanggalTertera
	Integer idCustomer
	String namaCustomer
	String nomorHeaderSalesOrder
	String username
	Date tanggalSystem
	String alamatPengiriman
	String nopol
	Boolean printed
	String tujuanPengiriman
	String kotaPengiriman
	String catatan

	static hasMany = [tableDetailSuratJalans: TableDetailSuratJalan]

	static mapping = {
		id column: "hdsj_id", generator: "sequence", params:[sequence: "table_header_surat_jalan_hdsj_id_seq"]
		version false
	}

	static constraints = {
		nomorHeaderSuratJalan maxSize: 15, unique: true
		tanggalTertera nullable: true
		idCustomer nullable: true
		namaCustomer nullable: true, maxSize: 100
		nomorHeaderSalesOrder nullable: true, maxSize: 15
		username nullable: true, maxSize: 30
		tanggalSystem nullable: true
		alamatPengiriman nullable: true
		nopol nullable: true, maxSize: 10
		printed nullable: true
		tujuanPengiriman nullable: true, maxSize: 100
		kotaPengiriman nullable: true, maxSize: 50
		catatan nullable: true
	}

}

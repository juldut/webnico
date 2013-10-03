package webnico

class TableHeaderSalesOrder {

	String nomorHeaderSalesOrder
	Date tanggalTertera
	Integer idCustomer
	String approvedBy
	String namaCustomer
	String alamatPengiriman
	String nomorPoCustomer
	Date tanggalSystem
	String username
	Boolean pakaiPpn
	Integer status
	Integer terminPembayaran
	String namaSalesman
	Integer idSalesman
	String jenisNota
	String nomorNpwp
	String namaNpwp
	String alamatNpwp

	static mapping = {
		id name: "nomorHeaderSalesOrder"
		version false
	}

	static constraints = {
		nomorHeaderSalesOrder maxSize: 15
		tanggalTertera nullable: true
		idCustomer nullable: true
		approvedBy nullable: true, maxSize: 30
		namaCustomer nullable: true, maxSize: 100
		alamatPengiriman nullable: true
		nomorPoCustomer nullable: true, maxSize: 75
		tanggalSystem nullable: true
		username nullable: true, maxSize: 30
		pakaiPpn nullable: true
		status nullable: true
		terminPembayaran nullable: true
		namaSalesman nullable: true, maxSize: 50
		idSalesman nullable: true
		jenisNota nullable: true, maxSize: 2
		nomorNpwp nullable: true, maxSize: 25
		namaNpwp nullable: true, maxSize: 100
		alamatNpwp nullable: true
	}
}

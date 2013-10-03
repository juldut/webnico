package webnico

class TableCompany {

	String nama
	String alamat
	String fax1
	String telp1
	String noNpwp
	String kota
	String ttFakturPajak
	String ttInvoice
	String namaNpwp
	String alamatNpwp
	Date tglNpwp

	static mapping = {
		id name: "nama", generator: "assigned"
		version false
	}

	static constraints = {
		nama maxSize: 35
		alamat nullable: true, maxSize: 100
		fax1 nullable: true, maxSize: 20
		telp1 nullable: true, maxSize: 20
		noNpwp nullable: true, maxSize: 30
		kota nullable: true, maxSize: 30
		ttFakturPajak nullable: true, maxSize: 30
		ttInvoice nullable: true, maxSize: 30
		namaNpwp nullable: true, maxSize: 30
		alamatNpwp nullable: true, maxSize: 100
		tglNpwp nullable: true
	}
}

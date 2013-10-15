package webnico

class Mahasiswa {

	String nama
	Date tanggalLahir

    static constraints = {
    	nama blank: false
    }
}

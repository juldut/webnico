package webnico

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TableAlamatPengirimanCustomer implements Serializable {

	Integer idCustomer
	String alamat

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append idCustomer
		builder.append alamat
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append idCustomer, other.idCustomer
		builder.append alamat, other.alamat
		builder.isEquals()
	}

	static mapping = {
		id composite: ["idCustomer", "alamat"]
		version false
	}

	static constraints = {
		alamat maxSize: 50
	}
}

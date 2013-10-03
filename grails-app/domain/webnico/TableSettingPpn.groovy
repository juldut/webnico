package webnico

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TableSettingPpn implements Serializable {

	String nomorHeaderPpn
	Date tanggalMulai

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append nomorHeaderPpn
		builder.append tanggalMulai
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append nomorHeaderPpn, other.nomorHeaderPpn
		builder.append tanggalMulai, other.tanggalMulai
		builder.isEquals()
	}

	static mapping = {
		id composite: ["nomorHeaderPpn", "tanggalMulai"]
		version false
	}

	static constraints = {
		nomorHeaderPpn maxSize: 20
	}
}

package webnico

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TableDetailInvoiceNomorSuratJalan implements Serializable {

	String nomorDetailInvoice
	String nomorHeaderSuratJalan

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append nomorDetailInvoice
		builder.append nomorHeaderSuratJalan
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append nomorDetailInvoice, other.nomorDetailInvoice
		builder.append nomorHeaderSuratJalan, other.nomorHeaderSuratJalan
		builder.isEquals()
	}

	static mapping = {
		id composite: ["nomorDetailInvoice", "nomorHeaderSuratJalan"]
		version false
	}

	static constraints = {
		nomorDetailInvoice maxSize: 20
		nomorHeaderSuratJalan maxSize: 15
	}
}

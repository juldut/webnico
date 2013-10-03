package webnico

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TableHistoryApprovalSalesOrder implements Serializable {

	String nomorHeaderSalesOrder
	Date approvalDate
	String approvalBy
	String keterangan
	Integer status

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append nomorHeaderSalesOrder
		builder.append approvalDate
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append nomorHeaderSalesOrder, other.nomorHeaderSalesOrder
		builder.append approvalDate, other.approvalDate
		builder.isEquals()
	}

	static mapping = {
		id composite: ["nomorHeaderSalesOrder", "approvalDate"]
		version false
	}

	static constraints = {
		nomorHeaderSalesOrder maxSize: 30
		approvalBy nullable: true, maxSize: 30
		keterangan nullable: true, maxSize: 100
		status nullable: true
	}
}

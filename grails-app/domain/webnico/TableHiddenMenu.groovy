package webnico

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TableHiddenMenu implements Serializable {

	Integer userLevel
	Integer indexMenu

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append userLevel
		builder.append indexMenu
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append userLevel, other.userLevel
		builder.append indexMenu, other.indexMenu
		builder.isEquals()
	}

	static mapping = {
		id composite: ["userLevel", "indexMenu"]
		version false
	}
}

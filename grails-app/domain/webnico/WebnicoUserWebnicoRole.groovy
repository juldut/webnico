package webnico

import org.apache.commons.lang.builder.HashCodeBuilder

class WebnicoUserWebnicoRole implements Serializable {

	WebnicoUser webnicoUser
	WebnicoRole webnicoRole

	boolean equals(other) {
		if (!(other instanceof WebnicoUserWebnicoRole)) {
			return false
		}

		other.webnicoUser?.id == webnicoUser?.id &&
			other.webnicoRole?.id == webnicoRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (webnicoUser) builder.append(webnicoUser.id)
		if (webnicoRole) builder.append(webnicoRole.id)
		builder.toHashCode()
	}

	static WebnicoUserWebnicoRole get(long webnicoUserId, long webnicoRoleId) {
		find 'from WebnicoUserWebnicoRole where webnicoUser.id=:webnicoUserId and webnicoRole.id=:webnicoRoleId',
			[webnicoUserId: webnicoUserId, webnicoRoleId: webnicoRoleId]
	}

	static WebnicoUserWebnicoRole create(WebnicoUser webnicoUser, WebnicoRole webnicoRole, boolean flush = false) {
		new WebnicoUserWebnicoRole(webnicoUser: webnicoUser, webnicoRole: webnicoRole).save(flush: flush, insert: true)
	}

	static boolean remove(WebnicoUser webnicoUser, WebnicoRole webnicoRole, boolean flush = false) {
		WebnicoUserWebnicoRole instance = WebnicoUserWebnicoRole.findByWebnicoUserAndWebnicoRole(webnicoUser, webnicoRole)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(WebnicoUser webnicoUser) {
		executeUpdate 'DELETE FROM WebnicoUserWebnicoRole WHERE webnicoUser=:webnicoUser', [webnicoUser: webnicoUser]
	}

	static void removeAll(WebnicoRole webnicoRole) {
		executeUpdate 'DELETE FROM WebnicoUserWebnicoRole WHERE webnicoRole=:webnicoRole', [webnicoRole: webnicoRole]
	}

	static mapping = {
		id composite: ['webnicoRole', 'webnicoUser']
		version false
	}
}

package webnico

class TableLogin {

	String username
	String password
	Integer userLevel

	static mapping = {
		id name: "username", generator: "assigned"
		version false
	}

	static constraints = {
		username maxSize: 30
		password nullable: true, maxSize: 36
		userLevel nullable: true
	}
}

package webnico

class TableTrace {

	String nama

	static mapping = {
		id column: "pk", generator: "assigned"
		version false
	}

	static constraints = {
		nama nullable: true, maxSize: 100
	}
}

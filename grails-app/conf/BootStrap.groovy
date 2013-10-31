import webnico.WebnicoRole
import webnico.WebnicoUser
import webnico.WebnicoUserWebnicoRole

class BootStrap {

    def init = { servletContext ->

    	// buat bikin user baru
	    // def adminRole = new WebnicoRole(authority: 'ROLE_ADMIN').save(flush: true)
	    // def userRole = new WebnicoRole(authority: 'ROLE_USER').save(flush: true)

	    // def testUser = new WebnicoUser(username: 'admin', enabled: true, password: 'admin')
	    // testUser.save(flush: true)

	    // WebnicoUserWebnicoRole.create testUser, adminRole, true
    	// END OF buat bikin user baru

    }
    def destroy = {
    }
}

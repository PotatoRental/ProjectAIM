import projectaim.security.SecRole
import projectaim.security.SecUser
import projectaim.security.SecUserSecRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true, flush: true)

        def user1 = SecUser.findByUsername('milky') ?: new SecUser(username: 'milky', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user1.authorities.contains(adminRole)) {
            SecUserSecRole.create user1, adminRole, true
        }
        def user2 = SecUser.findByUsername('monika') ?: new SecUser(username: 'monika', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user2.authorities.contains(userRole)) {
            SecUserSecRole.create user2, userRole, true
        }
    }
    def destroy = {
    }
}

import projectaim.security.SecRole
import projectaim.security.SecUser
import projectaim.security.SecUserSecRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)

        def cicRole = SecRole.findByAuthority('ROLE_CIC') ?: new SecRole(authority: 'ROLE_CIC').save(failOnError: true, flush: true)

        def ccRole = SecRole.findByAuthority('ROLE_CC') ?: new SecRole(authority: 'ROLE_CC').save(failOnError: true, flush: true)

        def evalRole = SecRole.findByAuthority('ROLE_EVAL') ?: new SecRole(authority: 'ROLE_EVAL').save(failOnError: true, flush: true)

        def user1 = SecUser.findByUsername('milky') ?: new SecUser(username: 'milky', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user1.authorities.contains(adminRole)) {
            SecUserSecRole.create user1, adminRole, true
        }

        def user2 = SecUser.findByUsername('monika') ?: new SecUser(username: 'monika', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user2.authorities.contains(cicRole)) {
            SecUserSecRole.create user2, cicRole, true
        }

        def user3 = SecUser.findByUsername('yun') ?: new SecUser(username: 'yun', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user3.authorities.contains(ccRole)) {
            SecUserSecRole.create user3, ccRole, true
        }
        def user4 = SecUser.findByUsername('alvin') ?: new SecUser(username: 'alvin', enabled: true, password: 'test', accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        if (!user4.authorities.contains(evalRole)) {
            SecUserSecRole.create user4, evalRole, true
        }
    }
    def destroy = {
    }
}

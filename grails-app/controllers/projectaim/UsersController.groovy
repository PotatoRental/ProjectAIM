package projectaim

import grails.transaction.Transactional
import projectaim.security.SecRole
import projectaim.security.SecUser
import projectaim.security.SecUserSecRole

class UsersController {

    def index() {}

    @Transactional
    def save(SecUser secUserInstant) {
        if (secUserInstant == null) {
            notFound()
            return
        }

        if (secUserInstant.hasErrors()) {
            respond secUserInstant.errors, view: 'users'
            return
        }

        secUserInstant.save flush: true
        SecUserSecRole.create secUserInstant, SecRole.findByAuthority("ROLE_ADMIN")

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'secUserInstance.label', default: 'User'), secUserInstant.id])
                redirect secUserInstant
            }
            '*' {
               respond secUserInstant, [status: CREATED]
            }
        }
    }
}

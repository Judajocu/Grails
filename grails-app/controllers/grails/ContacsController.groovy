package grails

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ContacsController {

    static scaffold = Contacs

    /*ContacsService contacsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond contacsService.list(params), model:[contacsCount: contacsService.count()]
    }

    def show(Long id) {
        respond contacsService.get(id)
    }

    def create() {
        respond new Contacs(params)
    }

    def save(Contacs contacs) {
        if (contacs == null) {
            notFound()
            return
        }

        try {
            contacsService.save(contacs)
        } catch (ValidationException e) {
            respond contacs.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contacs.label', default: 'Contacs'), contacs.id])
                redirect contacs
            }
            '*' { respond contacs, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond contacsService.get(id)
    }

    def update(Contacs contacs) {
        if (contacs == null) {
            notFound()
            return
        }

        try {
            contacsService.save(contacs)
        } catch (ValidationException e) {
            respond contacs.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'contacs.label', default: 'Contacs'), contacs.id])
                redirect contacs
            }
            '*'{ respond contacs, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        contacsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'contacs.label', default: 'Contacs'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contacs.label', default: 'Contacs'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }*/
}

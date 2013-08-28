package com.ospip

import org.springframework.dao.DataIntegrityViolationException

class AlertaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def springSecurityService
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [alertaInstanceList: Alerta.list(params), alertaInstanceTotal: Alerta.count()]
    }

    def create() {
        [alertaInstance: new Alerta(params)]
    }

    def save() {
        def alertaInstance = new Alerta(params)
		alertaInstance.usuarioCreador = springSecurityService.getCurrentUser()
        if (!alertaInstance.save(flush: true)) {
            render(view: "create", model: [alertaInstance: alertaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'alerta.label', default: 'Alerta'), alertaInstance.id])
        redirect(action: "show", id: alertaInstance.id)
    }

    def show() {
        def alertaInstance = Alerta.get(params.id)
        if (!alertaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "list")
            return
        }

        [alertaInstance: alertaInstance]
    }

    def edit() {
        def alertaInstance = Alerta.get(params.id)
        if (!alertaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "list")
            return
        }

        [alertaInstance: alertaInstance]
    }

    def update() {
        def alertaInstance = Alerta.get(params.id)
        if (!alertaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (alertaInstance.version > version) {
                alertaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'alerta.label', default: 'Alerta')] as Object[],
                          "Another user has updated this Alerta while you were editing")
                render(view: "edit", model: [alertaInstance: alertaInstance])
                return
            }
        }

        alertaInstance.properties = params

        if (!alertaInstance.save(flush: true)) {
            render(view: "edit", model: [alertaInstance: alertaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'alerta.label', default: 'Alerta'), alertaInstance.id])
        redirect(action: "show", id: alertaInstance.id)
    }

    def delete() {
        def alertaInstance = Alerta.get(params.id)
        if (!alertaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "list")
            return
        }

        try {
            alertaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'alerta.label', default: 'Alerta'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

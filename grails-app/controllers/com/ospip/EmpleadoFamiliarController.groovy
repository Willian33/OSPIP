package com.ospip

import org.springframework.dao.DataIntegrityViolationException

import com.ospip.EmpleadoFamiliar;

class EmpleadoFamiliarController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [empleadoFamiliarInstanceList: EmpleadoFamiliar.list(params), empleadoFamiliarInstanceTotal: EmpleadoFamiliar.count()]
    }

    def create() {
        [empleadoFamiliarInstance: new EmpleadoFamiliar(params)]
    }

    def save() {
        def empleadoFamiliarInstance = new EmpleadoFamiliar(params)
		empleadoFamiliarInstance.paisOrigen = Pais.get(params.int('paisOrigenId'))
        if (!empleadoFamiliarInstance.save(flush: true)) {
            render(view: "create", model: [empleadoFamiliarInstance: empleadoFamiliarInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), empleadoFamiliarInstance.id])
        redirect(action: "show", id: empleadoFamiliarInstance.id)
    }

    def show() {
        def empleadoFamiliarInstance = EmpleadoFamiliar.get(params.id)
        if (!empleadoFamiliarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "list")
            return
        }

        [empleadoFamiliarInstance: empleadoFamiliarInstance]
    }

    def edit() {
        def empleadoFamiliarInstance = EmpleadoFamiliar.get(params.id)
        if (!empleadoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "list")
            return
        }

        [empleadoFamiliarInstance: empleadoFamiliarInstance]
    }

    def update() {
        def empleadoFamiliarInstance = EmpleadoFamiliar.get(params.id)
        if (!empleadoFamiliarInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (empleadoFamiliarInstance.version > version) {
                empleadoFamiliarInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar')] as Object[],
                          "Another user has updated this EmpleadoFamiliar while you were editing")
                render(view: "edit", model: [empleadoFamiliarInstance: empleadoFamiliarInstance])
                return
            }
        }

        empleadoFamiliarInstance.properties = params
		empleadoFamiliarInstance.paisOrigen = Pais.get(params.int('paisOrigenId'))
		
        if (!empleadoFamiliarInstance.save(flush: true)) {
            render(view: "edit", model: [empleadoFamiliarInstance: empleadoFamiliarInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), empleadoFamiliarInstance.id])
        redirect(action: "show", id: empleadoFamiliarInstance.id)
    }

    def delete() {
        def empleadoFamiliarInstance = EmpleadoFamiliar.get(params.id)
        if (!empleadoFamiliarInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "list")
            return
        }

        try {
            empleadoFamiliarInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

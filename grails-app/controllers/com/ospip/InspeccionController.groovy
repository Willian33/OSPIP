package com.ospip

import org.springframework.dao.DataIntegrityViolationException

import com.ospip.Inspeccion;

class InspeccionController {
	
	
	def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
		
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [inspeccionInstanceList: Inspeccion.list(params), inspeccionInstanceTotal: Inspeccion.count()]
    }

    def create() {
        [inspeccionInstance: new Inspeccion(params)]
    }

    def save() {
        def inspeccionInstance = new Inspeccion(params)
		inspeccionInstance.usuario = springSecurityService.getCurrentUser()
		
        if (!inspeccionInstance.save(flush: true)) {
            render(view: "create", model: [inspeccionInstance: inspeccionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), inspeccionInstance.id])
        redirect(action: "show", id: inspeccionInstance.id)
    }

    def show() {
        def inspeccionInstance = Inspeccion.get(params.id)
        if (!inspeccionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "list")
            return
        }

        [inspeccionInstance: inspeccionInstance]
    }

    def edit() {
        def inspeccionInstance = Inspeccion.get(params.id)
        if (!inspeccionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "list")
            return
        }

        [inspeccionInstance: inspeccionInstance]
    }

    def update() {
        def inspeccionInstance = Inspeccion.get(params.id)
        if (!inspeccionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (inspeccionInstance.version > version) {
                inspeccionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'inspeccion.label', default: 'Inspeccion')] as Object[],
                          "Another user has updated this Inspeccion while you were editing")
                render(view: "edit", model: [inspeccionInstance: inspeccionInstance])
                return
            }
        }

        inspeccionInstance.properties = params

        if (!inspeccionInstance.save(flush: true)) {
            render(view: "edit", model: [inspeccionInstance: inspeccionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), inspeccionInstance.id])
        redirect(action: "show", id: inspeccionInstance.id)
    }

    def delete() {
        def inspeccionInstance = Inspeccion.get(params.id)
        if (!inspeccionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "list")
            return
        }

        try {
            inspeccionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'inspeccion.label', default: 'Inspeccion'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

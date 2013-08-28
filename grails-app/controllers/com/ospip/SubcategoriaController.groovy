package com.ospip

import org.springframework.dao.DataIntegrityViolationException

class SubcategoriaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [subcategoriaInstanceList: Subcategoria.list(params), subcategoriaInstanceTotal: Subcategoria.count()]
    }

    def create() {
        [subcategoriaInstance: new Subcategoria(params)]
    }

    def save() {
        def subcategoriaInstance = new Subcategoria(params)
        if (!subcategoriaInstance.save(flush: true)) {
            render(view: "create", model: [subcategoriaInstance: subcategoriaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), subcategoriaInstance.id])
        redirect(action: "show", id: subcategoriaInstance.id)
    }

    def show() {
        def subcategoriaInstance = Subcategoria.get(params.id)
        if (!subcategoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "list")
            return
        }

        [subcategoriaInstance: subcategoriaInstance]
    }

    def edit() {
        def subcategoriaInstance = Subcategoria.get(params.id)
        if (!subcategoriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "list")
            return
        }

        [subcategoriaInstance: subcategoriaInstance]
    }

    def update() {
        def subcategoriaInstance = Subcategoria.get(params.id)
        if (!subcategoriaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (subcategoriaInstance.version > version) {
                subcategoriaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'subcategoria.label', default: 'Subcategoria')] as Object[],
                          "Another user has updated this Subcategoria while you were editing")
                render(view: "edit", model: [subcategoriaInstance: subcategoriaInstance])
                return
            }
        }

        subcategoriaInstance.properties = params

        if (!subcategoriaInstance.save(flush: true)) {
            render(view: "edit", model: [subcategoriaInstance: subcategoriaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), subcategoriaInstance.id])
        redirect(action: "show", id: subcategoriaInstance.id)
    }

    def delete() {
        def subcategoriaInstance = Subcategoria.get(params.id)
        if (!subcategoriaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "list")
            return
        }

        try {
            subcategoriaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'subcategoria.label', default: 'Subcategoria'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

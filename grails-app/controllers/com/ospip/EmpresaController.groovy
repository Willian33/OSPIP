package com.ospip

import org.springframework.dao.DataIntegrityViolationException

import com.ospip.Empresa;

class EmpresaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [empresaInstanceList: Empresa.list(params), empresaInstanceTotal: Empresa.count()]
    }

    def create() {
        [empresaInstance: new Empresa(params)]
    }

    def save() {
        def empresaInstance = new Empresa(params)
		empresaInstance.provincia = Provincia.get(params.int('provinciaId'))
		empresaInstance.localidad = Localidad.get(params.int('localidadId'))
        if (!empresaInstance.save(flush: true)) {
            render(view: "create", model: [empresaInstance: empresaInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'empresa.label', default: 'Empresa'), empresaInstance.id])
        redirect(action: "show", id: empresaInstance.id)
    }

    def show() {
        def empresaInstance = Empresa.get(params.id)
        if (!empresaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "list")
            return
        }
		
		def c = Empleado.createCriteria()
		def d = Empleado.createCriteria()
		def empleadosDelegados = c.list {
		    eq("empresa", empresaInstance)
		    eq("delegado", true)
		    order("nombre", "asc")
		}
		
		def empleadosNoDelegados = d.list {
		    eq("empresa", empresaInstance)
		    eq("delegado", false)
		    order("nombre", "asc")
		}
		
        [empresaInstance: empresaInstance, empleadosDelegados: empleadosDelegados, cantEmpleadosDelegados: empleadosDelegados.size(), empleadosNoDelegados: empleadosNoDelegados, cantEmpleadosNoDelegados: empleadosNoDelegados.size()]
    }

    def edit() {
        def empresaInstance = Empresa.get(params.id)
        if (!empresaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "list")
            return
        }

        [empresaInstance: empresaInstance]
    }

    def update() {
        def empresaInstance = Empresa.get(params.id)
        if (!empresaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (empresaInstance.version > version) {
                empresaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'empresa.label', default: 'Empresa')] as Object[],
                          "Another user has updated this Empresa while you were editing")
                render(view: "edit", model: [empresaInstance: empresaInstance])
                return
            }
        }

        empresaInstance.properties = params
		empresaInstance.provincia = Provincia.get(params.int('provinciaId'))
		empresaInstance.localidad = Localidad.get(params.int('localidadId'))
		
        if (!empresaInstance.save()) {
            render(view: "edit", model: [empresaInstance: empresaInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'empresa.label', default: 'Empresa'), empresaInstance.id])
        redirect(action: "show", id: empresaInstance.id)
    }

    def delete() {
        def empresaInstance = Empresa.get(params.id)
        if (!empresaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "list")
            return
        }

        try {
            empresaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

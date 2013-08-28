package com.ospip



import org.junit.*
import grails.test.mixin.*

@TestFor(SubcategoriaController)
@Mock(Subcategoria)
class SubcategoriaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/subcategoria/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.subcategoriaInstanceList.size() == 0
        assert model.subcategoriaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.subcategoriaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.subcategoriaInstance != null
        assert view == '/subcategoria/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/subcategoria/show/1'
        assert controller.flash.message != null
        assert Subcategoria.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/subcategoria/list'


        populateValidParams(params)
        def subcategoria = new Subcategoria(params)

        assert subcategoria.save() != null

        params.id = subcategoria.id

        def model = controller.show()

        assert model.subcategoriaInstance == subcategoria
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/subcategoria/list'


        populateValidParams(params)
        def subcategoria = new Subcategoria(params)

        assert subcategoria.save() != null

        params.id = subcategoria.id

        def model = controller.edit()

        assert model.subcategoriaInstance == subcategoria
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/subcategoria/list'

        response.reset()


        populateValidParams(params)
        def subcategoria = new Subcategoria(params)

        assert subcategoria.save() != null

        // test invalid parameters in update
        params.id = subcategoria.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/subcategoria/edit"
        assert model.subcategoriaInstance != null

        subcategoria.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/subcategoria/show/$subcategoria.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        subcategoria.clearErrors()

        populateValidParams(params)
        params.id = subcategoria.id
        params.version = -1
        controller.update()

        assert view == "/subcategoria/edit"
        assert model.subcategoriaInstance != null
        assert model.subcategoriaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/subcategoria/list'

        response.reset()

        populateValidParams(params)
        def subcategoria = new Subcategoria(params)

        assert subcategoria.save() != null
        assert Subcategoria.count() == 1

        params.id = subcategoria.id

        controller.delete()

        assert Subcategoria.count() == 0
        assert Subcategoria.get(subcategoria.id) == null
        assert response.redirectedUrl == '/subcategoria/list'
    }
}

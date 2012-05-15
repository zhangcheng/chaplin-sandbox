Controller = require 'controllers/controller'
Services = require 'models/services'
ServicesView = require 'views/services_view'

module.exports = class ServicesController extends Controller
  historyURL: ''

  index: (params) ->
    console.debug 'ServicesController#index'
    @collection = new Services()
    @view = new ServicesView collection: @collection

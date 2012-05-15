Collection = require 'models/collection'
Service = require './service'

module.exports = class Services extends Collection
  model: Service

  initialize: ->
    services = [{title: 't1'}, {title: 't2'}]
    console.debug 'Services#initialize', services
    super
    @reset services

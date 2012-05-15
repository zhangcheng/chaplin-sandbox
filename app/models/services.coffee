Collection = require 'models/collection'
Service = require './service'

module.exports = class Services extends Collection
  model: Service

  initialize: ->
    super
    @getServices()

  getServices: ->
    console.debug 'Services#getServices'
    @reset [{title: 't1'}, {title: 't2'}]

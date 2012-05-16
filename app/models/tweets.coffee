mediator = require 'mediator'
Collection = require './collection'
Tweet = require './tweet'

module.exports = class Tweets extends Collection
  model: Tweet

  initialize: ->
    super
    @reset [{text: 'text3'}]

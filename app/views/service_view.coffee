View = require './view'
template = require './templates/service'

module.exports = class ServiceView extends View
  template: template
  className: 'service'
  autoRender: true

  render: ->
    console.log 'ServiceView#render', this, @$el
    super

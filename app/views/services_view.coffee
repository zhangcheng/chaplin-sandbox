CollectionView = require 'chaplin/views/collection_view'
ServiceView = require './service_view'
template = require './templates/services'

module.exports = class ServicesView extends CollectionView
  template: template
  autoRender: true

  tagName: 'div' # This is not directly a list but contains a list
  id: 'services'

  containerSelector: '#content-container'
  listSelector: '.services' # Append the item views to this element
  fallbackSelector: '.fallback'

  initialize: ->
    super # Will render the list itself and all items

  # The most important method a class inheriting from CollectionView
  # must overwrite.
  getView: (item) ->
    # Instantiate an item view
    new ServiceView model: item

  render: ->
    console.log 'ServicesView#render', this, @$el
    super
#    @$('.tweets, .tweets-header').css 'display', 'block'

  afterRender: ->
    super
    console.log 'ServicesView#afterRender', @containerSelector, $(@containerSelector)

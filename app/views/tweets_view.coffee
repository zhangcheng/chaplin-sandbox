mediator = require 'mediator'
CollectionView = require 'chaplin/views/collection_view'
TweetView = require './tweet_view'
template = require './templates/tweets'

module.exports = class TweetsView extends CollectionView
  template: template

  tagName: 'div' # This is not directly a list but contains a list
  id: 'tweets'

  containerSelector: '#content-container'
  listSelector: '.tweets' # Append the item views to this element
  fallbackSelector: '.fallback'

  initialize: ->
    super # Will render the list itself and all items

  # The most important method a class inheriting from CollectionView
  # must overwrite.
  getView: (item) ->
    # Instantiate an item view
    new TweetView model: item

  render: ->
    console.log 'TweetsView#render', this, @$el
    super

  afterRender: ->
    super
    console.log 'TweetsView#afterRender', @containerSelector, $(@containerSelector)

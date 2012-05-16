template = require './templates/tweet'
View = require './view'

module.exports = class TweetView extends View
  template: template
  className: 'tweet'

  render: ->
    console.log 'TweetView#render', this, @$el
    super

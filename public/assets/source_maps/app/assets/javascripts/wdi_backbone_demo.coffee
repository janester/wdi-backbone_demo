window.WdiBackboneDemo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new WdiBackboneDemo.Router.Questions
    Backbone.history.start()

$(document).ready ->
  WdiBackboneDemo.initialize()

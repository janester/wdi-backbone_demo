class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    "": "index"
    "questions/:id":"show"

  index: ->
    alert "You are in the index action"

  show: (id) ->
    alert "You are on the show page of question #{id}"
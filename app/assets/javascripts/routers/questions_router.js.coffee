class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    "": "index"
    "questions/:id":"show"

  index: ->
    alert "You are in the index action"
    view = new WdiBackboneDemo.Views.QuestionsIndex
    $("#container").html(view.template())

  show: (id) ->
    alert "You are on the show page of question #{id}"


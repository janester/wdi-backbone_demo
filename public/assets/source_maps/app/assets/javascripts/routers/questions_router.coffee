class WdiBackboneDemo.Routers.Questions extends Backbone.Router
  routes:
    "": "index"
    "questions/:id":"show"

  initialize: ->
    @collection = new WdiBackboneDemo.Collections.Questions()
    @collection.fetch(reset: true)

  index: ->
    alert "You are in the index action"
    view = new WdiBackboneDemo.Views.QuestionsIndex(collection: @collection)
    $("#container").html(view.render().el)

  show: (id) ->
    alert "You are on the show page of question #{id}"


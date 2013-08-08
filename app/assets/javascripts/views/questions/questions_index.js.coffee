class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: '<div></div>'
  initialize: ->
    @collection.on("reset", @render, this)
    @collection.on("add", @appendQuestion, this)
  events:
    "submit #new_question":"createQuestion"

  createQuestion: (event)->
    event.preventDefault()
    if $("#question_content").val() != "" #not in Sumeet's version
      #just didn't want to do a request to create an empty question
      @collection.create(content:$("#question_content").val())
      $("#question_content").val("")


  template: JST['questions/index']

  render: ->
    $(@el).html(@template())
    @collection.each(@appendQuestion)
    this
  appendQuestion: (question) ->
    view = new WdiBackboneDemo.Views.QuestionsShow(model: question)
    $("#questions_list").append(view.show_render().el)

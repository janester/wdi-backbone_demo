class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: '<div></div>'
  initialize: ->
    @collection.on("reset", @render, this)
  events:
    "submit #new_question":"createQuestion"

  createQuestion: (event)->
    event.preventDefault()
    if $("#question_content").val() != ""
      @collection.create(content:$("#question_content").val())


  template: JST['questions/index']

  render: ->
    $(@el).html(@template(questions: @collection))
    this

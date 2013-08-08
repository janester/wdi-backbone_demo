class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: '<div></div>'
  initialize: ->
    @collection.on("reset", @render, this)

  template: JST['questions/index']

  render: ->
    $(@el).html(@template(questions: @collection))
    this

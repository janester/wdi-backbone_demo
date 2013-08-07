class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: '<div></div>'
  initialize: ->
    @collection.on("reset", @render, this)

  template: JST['questions/index']

  render: ->
    console.log(@collection)
    $(@el).html(@template(questions: @collection))
    this

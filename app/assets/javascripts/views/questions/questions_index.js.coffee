class WdiBackboneDemo.Views.QuestionsIndex extends Backbone.View

  #el: '<div></div>'
  template: JST['questions/index']

  render: ->
    $(@el).html(@template(questions: "LOOK! ALL THE QUESTIONS!"))
    this

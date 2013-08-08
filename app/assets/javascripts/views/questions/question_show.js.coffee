class WdiBackboneDemo.Views.QuestionsShow extends Backbone.View
  template: JST['questions/show']
  tagName: 'li'

  show_render: ->
    $(@el).html(@template(question: @model))
    @ #@ means this!
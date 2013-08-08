class QuestionsController < ApplicationController
  respond_to :json
  def index
    respond_with(Question.all)
  end

  def show
    respond_with(Question.find(params[:id]))
  end

  def create
    question = Question.create(params[:question])
    respond_with(question)
  end


  def update
    question = Question.find(params[:id])
    question.update_attributes(params[:content])
    respond_with(question)
  end

  def destroy
    respond_with(Question.delete(params[:id]))
  end
end

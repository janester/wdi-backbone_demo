class QuestionsController < ApplicationController
  respond_to :json
  def index
    respond_with(Question.all)
  end

  def show
    respond_with(Question.find(paras[:id]))
  end

  # def new
  # end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end

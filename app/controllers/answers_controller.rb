class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @quest = Quest.find(params[:quest_id])
    @answer = @quest.answers.build(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to quest_path(@quest)
    else
      redirect_to quest_path(@quest)
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      redirect_to redirect_to quest_path(@quest)
    else
      render :edit
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  private

  def answer_params
    params.require(:answer).permit(:title, :description)
  end
end

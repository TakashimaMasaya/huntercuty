class QuestsController < ApplicationController
  def index
    @quests = Quest.all
    @quest = Quest.new
  end

  def create
    @quest = Quest.create(quest_params)
    @quest.user_id = current_user.id
    if @quest.save
      redirect_to quests_path
    else
      render :new
    end
  end

  def edit
    @quest = Quest.find(params[:id])
  end

  def update
    @quest = Quest.find(params[:id])
    if @quest.update(quest_params)
      redirect_to quests_path
    else
      render :edit
    end
  end

  def show
    @quest = Quest.find(params[:id])
    @answers = Answer.where(quest_id:@quest) 
    @answer = Answer.new
  end

  private

  def quest_params
    params.require(:quest).permit(:title, :description)
  end
end

class AddQuestIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :quest, foreign_key: true
  end
end

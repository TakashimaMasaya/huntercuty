class ChangeQuestionsToQuests < ActiveRecord::Migration[5.2]
  def change
    rename_table :questions, :quests
  end
end

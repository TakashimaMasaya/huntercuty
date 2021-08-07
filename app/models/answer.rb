# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  description :text             not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  quest_id    :integer
#  user_id     :integer
#
# Indexes
#
#  index_answers_on_quest_id  (quest_id)
#  index_answers_on_user_id   (user_id)
#
class Answer < ApplicationRecord
  belongs_to :quest
  belongs_to :user
end

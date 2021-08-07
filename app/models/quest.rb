# == Schema Information
#
# Table name: quests
#
#  id          :integer          not null, primary key
#  description :text             not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_quests_on_user_id  (user_id)
#
class Quest < ApplicationRecord
  has_many :answers
  belongs_to :user
end

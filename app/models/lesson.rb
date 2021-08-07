# == Schema Information
#
# Table name: lessons
#
#  id          :integer          not null, primary key
#  description :text             not null
#  image       :string           not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Lesson < ApplicationRecord
  mount_uploaders :image, ImageUploader
  serialize :image, JSON

  validates :image, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
end

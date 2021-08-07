# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  admin                        :boolean          default(FALSE)
#  crypted_password             :string
#  email                        :string
#  paid                         :boolean          default(FALSE)
#  profile                      :text
#  remember_me_token            :string
#  remember_me_token_expires_at :datetime
#  salt                         :string
#  username                     :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
# Indexes
#
#  index_users_on_email              (email) UNIQUE
#  index_users_on_remember_me_token  (remember_me_token)
#
class User < ApplicationRecord
    authenticates_with_sorcery!

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  has_many :quests
  has_many :answers
end

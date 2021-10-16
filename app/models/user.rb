class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :conversations, through: :messages
  has_many :messages, dependent: :destroy
end
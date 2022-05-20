class User < ApplicationRecord
  # has_secure_password
  # validates_uniqueness_of :username
  validates :username, presence: true, uniqueness: true
  # validates :password, presence: true

  has_many :messages
  scope :all_except, ->(user) { where.not(id: user) }
  after_create_commit { broadcast_append_to 'users' }
end

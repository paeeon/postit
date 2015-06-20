class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 3 }, on: :create

  has_secure_password validations: false

  def current_user
    params
  end


end
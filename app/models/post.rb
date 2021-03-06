class Post < ActiveRecord::Base
  include VoteCalculator
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :votes, as: :voteable
  
  validates :title, :url, presence: true
  validates :url, uniqueness: true
end
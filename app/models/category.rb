class Category < ApplicationRecord
  has_many :posts
  belongs_to :user
  has_many :categories_comments
  validates :name, presence: true
end

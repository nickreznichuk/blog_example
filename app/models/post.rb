class Post < ApplicationRecord
  mount_uploader :file, FilesUploader
  has_many :comments
  belongs_to :category
  belongs_to :user


  validates :title, presence: true
  validates :body, presence: true
end

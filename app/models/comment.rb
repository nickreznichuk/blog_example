class Comment < ApplicationRecord

  belongs_to :post

  validates :author, presence: true, format:{with: /\A[A-Z][a-z]{1,12}\s[A-Z][a-z]{1,12}\z/, message: "Ім'я повино складатися з двох слів, кожне з великої літери"}

  validates :body, presence: true
end

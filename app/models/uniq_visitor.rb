class UniqVisitor < ApplicationRecord
  validates :ip, uniqueness: true
end

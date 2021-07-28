class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :books
  has_many :reviews
end

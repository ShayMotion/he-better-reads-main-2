class Author < ApplicationRecord
  validates :description, presence: true

  has_many :books, dependent: :destroy
  has_many :reviews, through: :books
end
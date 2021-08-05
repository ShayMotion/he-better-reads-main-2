class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many: rates

  validates :title, :description, presence: true
end

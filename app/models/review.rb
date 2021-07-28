class Review < ApplicationRecord
    validates :rating, :comment, presence: true
    belongs_to :book 
    belongs_to :user
    has_one :rating
    has_one :comment
end

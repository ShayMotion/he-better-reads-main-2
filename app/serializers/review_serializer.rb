class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment,:rating   
  belongs_to :book 
  belongs_to :user
  has_one :rating
  has_one :comment
end

class BookSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :description, :publish_date, :rating, :title
  belongs_to :authors
end

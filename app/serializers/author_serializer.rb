class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, last_name, website, description
  has_many :books
end

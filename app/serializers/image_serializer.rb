class ImageSerializer < ActiveModel::Serializer
  attributes :imageURL
  has_many :users
end

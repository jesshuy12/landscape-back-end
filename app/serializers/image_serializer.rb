class ImageSerializer < ActiveModel::Serializer
  attributes :imageURL, :width, :height
  has_many :users
end

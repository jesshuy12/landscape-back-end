class ImageSerializer < ActiveModel::Serializer
  attributes :src, :width, :height
  has_many :users
end

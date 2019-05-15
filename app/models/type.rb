class Type < ApplicationRecord
  has_many :user_types
  has_many :users, through: :user_types
end

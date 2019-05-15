class User < ApplicationRecord
  has_many :user_images
  has_many :images, through: :user_images
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :user_types
  has_many :types, through: :user_types
end

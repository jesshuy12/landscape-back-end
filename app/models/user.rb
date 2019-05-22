class User < ApplicationRecord
  has_many :user_images
  has_many :images, through: :user_images
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :user_types
  has_many :types, through: :user_types
  has_one_attached :avatar

  validates :username, uniqueness: true
  has_secure_password

  # def avatar_filename
  #     self.avatar.filename.to_s if self.avatar.attached?
  # end
  #
  # def avatar_attached?
  #   self.avatar.attached?
  # end

end

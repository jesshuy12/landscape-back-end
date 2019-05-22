class UserSkillSerializer < ActiveModel::Serializer
  attributes :id, :skill_id, :user_id
  belongs_to :user
  belongs_to :skill
end

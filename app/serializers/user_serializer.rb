class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  Rails.application.routes.default_url_options[:host] = "localhost:3000"

  attributes :id, :name, :username, :location, :instagram_handle, :follower_count, :email, :avatar
  has_many :images
  has_many :skills

  def avatar
    if !self.object.avatar.attachment.nil?
      url_for(self.object.avatar)
    else
      "https://react.semantic-ui.com/images/avatar/large/matthew.png"
    end
  end

end

# def skill
#   self.skills.map do |skill|
#     skill.name
#   end
# end

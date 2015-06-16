class User < ActiveRecord::Base
  has_many :posts
  has_secure_password
  mount_uploader :avatar, AvatarUploader
  def display_name
    name.blank? ? email : name
  end

  



end

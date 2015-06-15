class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  def display_name
    name.blank? ? email : name
  end

  



end

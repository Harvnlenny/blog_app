class Post < ActiveRecord::Base
  include Taggable
  has_many :comments
  belongs_to :user
  has_many :blogs
  
  validates :title, presence: true
  validates :body, presence: true
  mount_uploader :pic, PicUploader
  
  
end

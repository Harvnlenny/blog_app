class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :blogs
  validates :title, presence: true
  validates :body, presence: true
end

class BlogController < ActionController::Base

  def index
    @posts = Post.all.order('created_at DESC').first(3)
    #@posts = Post.all.order('created_at DESC').first(3)
  end

  def show
    @post = Post.find_by_post_id(@post.id, :order => "created_at ASC")

  end


end
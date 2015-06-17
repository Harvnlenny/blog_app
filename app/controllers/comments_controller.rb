class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post }
        format.json { render json: { comment: render_to_string(@comment, formats: 'html') }}
      else
        format.html { redirect_to :back }
        format.json { render json: { error: "NOPE" } } # TODO actually do error here.
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :email_address, :name)
    end
end

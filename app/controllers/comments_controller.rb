class CommentsController < ApplicationController
  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.save

  end
  private
  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end

class CategoriesCommentsController < ApplicationController
  def create
    @category = Category.find_by_id(params[:category_id])
    @comment = @category.categories_comments.create(cat_comment_params)
    @comment.save

  end
  private
  def cat_comment_params
    params.require(:categories_comment).permit(:body, :author)
  end
end

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @article = Article.find(params[:article_id])
    @comment.article = @article

    if @comment.save
      redirect_to @article
    else
      render 'articles/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.expect(comment: [:body])
  end
end

class CommentsController < ApplicationController
  before_action :set_board

  def create
    comment = @board.comments.new(comments_params)
    comment.user_id = current_user.id
    comment.save

    redirect_to @board
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])

    if comment.user_id == current_user.id
      comment.update(comments_params)
    end

    redirect_to @board
  end

  def destroy
    comment = Comment.find(params[:id])

    if comment.user_id == current_user.id
      comment.destroy

      redirect_to @board
    end
  end

  private
  def set_board
    @board = Board.find(params[:board_id])
  end

  def comments_params
    params.require(:comment).permit(:content, :user_id)
  end
end
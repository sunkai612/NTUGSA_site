class Admin::CommentsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @comments = Comment.all
  end

  def show
  end

  def destroy
    @comment = Comment.find(params[:id])
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:post_id])
    @comment.destroy

    redirect_to admin_board_post_path(@board, @post)
  end
end

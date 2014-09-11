class Admin::PostsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @posts = Post.all
  end

  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
    @comment = @post.comments.all    
  end

  def destroy
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_board_path(@board)
  end

end

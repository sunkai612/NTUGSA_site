class PostsController < ApplicationController
  def index
  end

  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
  end

  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new(post_params)

    if @post.save
      redirect_to board_path(@board)
    else
      render :new
    end
  end

  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :type_name, :content)
  end

end

class PostsController < ApplicationController
  # def index
  # end

  def new
    @board = Board.find(params[:board_id])
    @post = @board.posts.new
  end

  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.new(post_params)

    if @post.save
      redirect_to board_path(@board)
      flash[:notice] = "發文成功"
    else
      render :new
      flash[:alert] = "發文失敗，請輸入提供的分類、作者須至少兩個字、標題須至少四個字、內容須至少二十字"
    end
  end

  def show
    @board = Board.find(params[:board_id])
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  # def update
  # end

  private

  def post_params
    params.require(:post).permit(:title, :type_name, :content, :author)
  end

end

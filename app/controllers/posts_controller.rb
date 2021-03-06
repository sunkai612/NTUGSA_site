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
      flash[:alert] = "發文失敗，請輸入提供的分類、作者須2~9字、標題須4~20字、內容須至少20字"
    end
    #render plain: params[:post].inspect
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
    if params[:post][:is_top] == "1"
      params[:post][:is_top?] = true
    end
    params.require(:post).permit(:title, :type_name, :content, :author, :is_top?)
  end

end

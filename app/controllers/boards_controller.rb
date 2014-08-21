class BoardsController < ApplicationController
  # def index
  # end

	def create
		@board = Board.new
	end

  def show
  	@board = Board.find(params[:id])
  	@posts = @board.posts.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  	# @post = Post.find(params[:id])
  end
end

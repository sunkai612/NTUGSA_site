class BoardsController < ApplicationController
  # def index
  # end

	def create
		@board = Board.new
	end

  def show
  	@board = Board.find(params[:id])
  	@posts = @board.posts
  	# @post = Post.find(params[:id])
  end
end

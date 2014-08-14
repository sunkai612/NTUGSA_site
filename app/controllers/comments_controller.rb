class CommentsController < ApplicationController
  
  def create
  	@board = Board.find(params[:board_id])
  	@post = @board.posts.find(params[:post_id])
  	@comment = @post.comments.new(comment_params)

  	if @comment.save
  		redirect_to board_post_path(@board, @post)
  	else
  		render "posts/show"
  	end
  end

  def update
  end

  private

  def comment_params
  	params.require(:comment).permit(:commenter, :content)
  end
end

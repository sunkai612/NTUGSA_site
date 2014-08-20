class CommentsController < ApplicationController
  
  def create
  	@board = Board.find(params[:board_id])
  	@post = @board.posts.find(params[:post_id])
  	@comment = @post.comments.new(comment_params)

  	if @comment.save
  		redirect_to board_post_path(@board, @post)
      flash[:notice] = "新增評論成功"
  	else
  		# render "posts/show"
      redirect_to board_post_path(@board, @post)
      flash[:alert] = "新增評論失敗，評論者與內容必須輸入文字"
  	end
  end

  # def update
  # end

  private

  def comment_params
  	params.require(:comment).permit(:commenter, :content)
  end
end

class CommentsController < ApplicationController
  
  def create
    @board = Board.find(params[:board_id])
    @post = @board.posts.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to board_post_path(@board, @post)
      flash[:notice] = "新增評論成功"
    else
      @comments = Comment.where(post_id: params[:post_id]).all
      # redirect_to board_post_path(@board, @post)
      flash[:alert] = "新增評論失敗，評論者需2~15字，內容需少於50字"
      render "posts/show"

    end
  end

  # def update
  # end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :content)
  end
end

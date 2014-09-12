class Admin::BoardsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def show
    @board = Board.find(params[:id])
    @post = @board.posts.all.order("created_at DESC").page(params[:page]).per(20)
  end

  def edit
  	@board = Board.find(params[:id])
  end

  def create 
    @board = Board.new(board_params)
    if @board.save!
      flash[:notice] = "成功新增論壇"
      redirect_to admin_boards_path
    else
      flash[:alert] = "您必須輸入標題與副標"
      render "new" 
    end
  end

  def update
  	@board = Board.find(params[:id])

  	if @board.update(board_params)
        flash[:notice] = "成功更新論壇"
   	  redirect_to admin_boards_path
	else
        flash[:alert] = "您必須輸入標題與副標"
   	  render "edit"
	end
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    flash[:notice] = "成功刪除論壇"
    redirect_to admin_boards_path
  end
    
  private

  def board_params
  	params.require(:board).permit(:name, :description)
  end
end

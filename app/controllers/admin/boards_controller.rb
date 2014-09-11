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
      redirect_to admin_boards_path
    else
      render "new" 
    end
  end

  def update
  	@board = Board.find(params[:id])

  	if @board.update(board_params)
   		redirect_to admin_boards_path
	else
   		render "edit"
	end
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to admin_boards_path
  end
    
  private

  def board_params
  	params.require(:board).permit(:name, :description)
  end
end

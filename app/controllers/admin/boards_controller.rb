class Admin::BoardsController < ApplicationController
  def index
  	@boards = Board.all
  end

  def new
  end

  def show
  end

  def edit
  	@board = Board.find(params[:id])
  end

  def update
  	@board = Board.find(params[:id])

  	if @board.update(board_params)
   		redirect_to admin_boards_path
	else
   		render "edit"
	end
  end

  private

  def board_params
  	params.require(:board).permit(:name, :description)
  end
end

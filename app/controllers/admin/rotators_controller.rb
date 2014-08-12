class Admin::RotatorsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @rotator = Rotator.all
  end

  def show
    @rotator = Rotator.find(params[:id])
  end

  def new
    @rotator = Rotator.new
  end

  def edit
    @rotator = Rotator.find(params[:id])
  end

  def create
    @rotator = Rotator.new(rotator_params)
    
    respond_to do |format|
      if @rotator.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_rotators_url, notice: 'Rotator was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @rotator = Rotator.find(params[:id])
    respond_to do |format|
      if @rotator.update(rotator_params)
        format.html { redirect_to admin_rotators_url, notice: 'Rotator was successfully updated.' }
        #format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rotator = Rotator.find(params[:id])
    @rotator.destroy
    respond_to do |format|
      format.html { redirect_to admin_rotators_url, notice: 'Rotator was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  def rotator_params
      params.require(:rotator).permit(:title, :order)
  end
end

class Admin::RecordsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @record = Record.joins(:organization).all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def edit
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(record_params)
    
    respond_to do |format|
      if @record.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_records_url, notice: 'Record was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @record = Record.find(params[:id])
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to admin_records_url, notice: 'Record was successfully updated.' }
        #format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    respond_to do |format|
      format.html { redirect_to admin_records_url, notice: 'Record was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private
  
  def record_params
      params.require(:record).permit(:title, :description, :organization_id, :date, :locatoin, :content, :image_large, :image_small, :file)
  end
end
class Admin::StatutesController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @statute = Statute.all
  end

  def show
    @statute = Statute.find(params[:id])
  end

  def new
    @statute = Statute.new
  end

  def edit
    @statute = Statute.find(params[:id])
  end

  def create
    @statute = Statute.new(statute_params)
    
    respond_to do |format|
      if @statute.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_statutes_url, notice: 'Statute was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @statute = Statute.find(params[:id])
    respond_to do |format|
      if @statute.update(statute_params)
        format.html { redirect_to admin_statutes_url, notice: 'Statute was successfully updated.' }
        #format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @statute = Statute.find(params[:id])
    @statute.destroy
    respond_to do |format|
      format.html { redirect_to admin_statutes_url, notice: 'Statute was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  def statute_params
      params.require(:statute).permit(:title, :content)
  end
end

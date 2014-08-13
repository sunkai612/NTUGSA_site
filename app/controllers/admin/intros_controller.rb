class Admin::IntrosController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @intro = Intro.all
  end

  def show
    @intro = Intro.find(params[:id])
  end

  def new
    @intro = Intro.new
  end

  def edit
    @intro = Intro.find(params[:id])
  end

  def create
    @intro = Intro.new(intro_params)
    
    respond_to do |format|
      if @intro.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_intros_url, notice: 'Intro was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @intro = Intro.find(params[:id])
    respond_to do |format|
      if @intro.update(intro_params)
        format.html { redirect_to admin_intros_url, notice: 'Intro was successfully updated.' }
        #format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @intro = Intro.find(params[:id])
    @intro.destroy
    respond_to do |format|
      format.html { redirect_to admin_intros_url, notice: 'Intro was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  def intro_params
      params.require(:intro).permit(:title, :content)
  end
end

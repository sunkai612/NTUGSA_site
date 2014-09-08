class Admin::EventsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_events_url, notice: 'Event was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to admin_events_url, notice: 'Event was successfully updated.' }
        #format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url, notice: 'Event was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :content, :is_gsa, :organization, :event_date, :location, :video, :link, :image_large, :image_small)
  end
end
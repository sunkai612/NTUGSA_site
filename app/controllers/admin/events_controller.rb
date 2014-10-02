class Admin::EventsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @event = Event.all.order("event_date DESC")
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @event = Event.new
  end

  def edit
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_events_url, notice: '成功新增活動' }
        #format.json { render :show, status: :created, location: @group }
      else
        flash[:alert] = "您必須輸入標題（1~10字）、主辦單位（1~11字）、時間、地點（1~14字）、內容（最少20字）及上傳圖片，若輸入副標最多只能17字"
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @event = Event.find(params[:id])
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to admin_events_url, notice: '成功更新活動' }
        #format.json { render :show, status: :ok, location: @group }
      else
        flash[:alert] = "您必須輸入標題（1~10字）、主辦單位（1~11字）、時間、地點（1~14字）、內容（最少20字）及上傳圖片，若輸入副標最多只能17字"
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url, notice: '成功刪除活動' }
      #format.json { head :no_content }
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :content, :is_gsa, :organization, :event_date, :location, :video, :link, :image_large, :image_small)
  end
end
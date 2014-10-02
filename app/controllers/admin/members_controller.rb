class Admin::MembersController < ApplicationController
  before_action :set_organization
  before_action :authenticate_administrator!  

  def new 
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @member = @organization.members.build
  end

  def create
    @member = @organization.members.new(member_params)
    respond_to do |format|
      if @member.save
        format.html { redirect_to admin_organization_path(@organization), notice: '成功新增成員' }
        #format.json { render :show, status: :created, location: @group }
      else
        flash[:alert] = "您必須輸入姓名（1~10字）與簡介（至少20字），並選擇部門"
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit 
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: 201, acl: :public_read)
    @member = @organization.members.find(params[:id])
  end

  def update
    @member = @organization.members.find(params[:id])
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to admin_organization_path(@organization), notice: '成功更新成員' }
        #format.json { render :show, status: :created, location: @group }
      else
        flash[:alert] = "您必須輸入姓名（1~10字）與簡介（至少20字），並選擇部門"
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @member = @organization.members.find(params[:id])
    @member.destroy
    respond_to do |format|
      format.html { redirect_to admin_organization_path(@organization), notice: '成功刪除成員' }
      #format.json { head :no_content }
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end

  def member_params
    params.require(:member).permit(:name, :intro, :organization_id, :member_order, :avatar)
  end
end

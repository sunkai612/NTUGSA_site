class Admin::OrganizationsController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @organization = Organization.all.order("id ASC")
  end

  def show
    @organization = Organization.find(params[:id])
    @member = @organization.members
  end

  def new
    @organization = Organization.new
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def create
    @organization = Organization.new(organization_params)
    
    respond_to do |format|
      if @organization.save
        #current_administrator.join!(@rotator)
        format.html { redirect_to admin_organizations_url, notice: '成功新增部門' }
        #format.json { render :show, status: :created, location: @group }
      else
        flash[:alert] = "您必須輸入名稱（1~10字）與簡介（至少20字）"
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @organization = Organization.find(params[:id])
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to admin_organizations_url, notice: '成功更新部門' }
        #format.json { render :show, status: :ok, location: @group }
      else
        flash[:alert] = "您必須輸入名稱（1~10字）與簡介（至少20字）"
        format.html { render :edit }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to admin_organizations_url, notice: '成功刪除部門' }
      #format.json { head :no_content }
    end
  end

  def organization_params
      params.require(:organization).permit(:title, :content)
  end
end

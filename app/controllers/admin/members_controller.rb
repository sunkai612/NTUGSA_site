class Admin::MembersController < ApplicationController
  before_action :set_organization
  before_action :authenticate_administrator!  

  def new 
    @member = @organization.members.build
  end

  def create
    @member = @organization.members.new(member_params)
    respond_to do |format|
      if @member.save
        format.html { redirect_to admin_organization_path(@organization), notice: 'Member was successfully created.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit 
    @member = @organization.members.find(params[:id])
  end

  def update
    @member = @organization.members.find(params[:id])
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to admin_organization_path(@organization), notice: 'Member was successfully updated.' }
        #format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        #format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @member = @organization.members.find(params[:id])
    @member.destroy
    respond_to do |format|
      format.html { redirect_to admin_organization_path(@organization), notice: 'Member was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:organization_id])
  end

  def member_params
    params.require(:member).permit(:name, :intro)
  end
end

require 'rails_helper'

RSpec.describe Admin::RotatorsController, :type => :controller do
  before :each do
    @administrator = create(:administrator)
  end
  it "requires login" do
    get :index
    expect(response).to redirect_to "/administrators/sign_in"
  end

  describe 'GET #index' do
    before :each do
      sign_in @administrator
    end

    it "assigns all rotators as @rotator"  do
      rotator = create(:rotator)
      get :index
      expect(assigns(:rotator)).to match_array [rotator]
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before :each do
      sign_in @administrator
    end

    it "assigns the requested rotator as @rotator" do
      rotator = create(:rotator)
      get :show, id: rotator
      expect(assigns(:rotator)).to eq rotator
    end

    it "renders the :show view" do
      rotator = create(:rotator)
      get :show, id: rotator
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    before :each do
      sign_in @administrator
    end

    it "assigns a new rotator as @rotator" do
      get :new
      expect(assigns(:rotator)).to be_a_new(Rotator)
    end

    it "renders the :new view" do
      get :new 
      expect(response).to render_template :new 
    end
  end

  describe 'GET #edit' do
    before :each do
      sign_in @administrator
    end

    it "assigns the requested rotator as @rotator" do
      rotator = create(:rotator)
      get :edit, id: rotator
      expect(assigns(:rotator)).to eq rotator
    end

    it "renders the :edit template" do
      rotator = create(:rotator)
      get :edit, id: rotator
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    before :each do
      sign_in @administrator
    end
    context 'with valid attributes' do
      it "saves the new rotator in the database" do
        expect{
          post :create, rotator: attributes_for(:rotator)
        }.to change(Rotator, :count).by(1)
      end

      it "redirects to the home page" do
        post :create, rotator: attributes_for(:rotator)
        expect(response).to redirect_to "/admin/rotators"
      end
    end

    context 'with invalid attributes' do
      it "does not saves the new rotator in the database" do
        expect{
          post :create, rotator: attributes_for(:invalid_rotator)
        }.to_not change(Rotator, :count)
      end

      it "re-renders the :new template" do
        post :create, rotator: attributes_for(:invalid_rotator)
        expect(response).to render_template :new
      end
    end
  end

  describe 'PUT #update' do
    before :each do
      sign_in @administrator
      @rotator = create(:rotator, title: "title", link: "link")
    end

    it "locates the requested rotator" do
      put :update, id: @rotator, rotator: attributes_for(:rotator)
      expect(assigns(:rotator)).to eq @rotator
    end

    context "with valid attributes" do
      it "updates the rotator in the database" do
        put :update, id: @rotator, rotator: attributes_for(:rotator, title: "new title")
        @rotator.reload
        expect(@rotator.title).to eq "new title"
      end

      it "redirects to the rotator" do
        put :update, id: @rotator, rotator: attributes_for(:rotator)
        expect(response).to redirect_to "/admin/rotators"
      end
    end

    context "with invalid attributes" do
      it "does not update the rotator" do 
        put :update, id: @rotator, rotator: attributes_for(:invalid_rotator)
        @rotator.reload
        expect(@rotator.title).to_not eq "new title"
      end

      it "re-renders the #edit template" do
        put :update, id: @rotator, rotator: attributes_for(:invalid_rotator)
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      sign_in @administrator
      @rotator = create(:rotator)
    end

    it "deletes the rotator from the database" do
      expect{
        delete :destroy, id: @rotator
      }.to change(Rotator, :count).by(-1)
    end

    it "redirects to the home page" do
      delete :destroy, id: @rotator
      expect(response).to redirect_to "/admin/rotators"
    end
  end

end

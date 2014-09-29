require 'rails_helper'

RSpec.describe Admin::EventsController, :type => :controller do
  before :each do
    @administrator = create(:administrator)
  end
  it "requires login" do
    get :index
    expect(response).to redirect_to "/administrators/sign_in"
  end

end

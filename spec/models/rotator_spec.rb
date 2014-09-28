require 'rails_helper'

RSpec.describe Rotator, :type => :model do
  it "is invalid without a title" do
    rotator = build(:rotator, title: nil)
    expect(rotator).to have(1).errors_on(:title)
  end

  it "is invalid without a link" do
    rotator = build(:rotator, link: nil)
    expect(rotator).to have(1).errors_on(:link)
  end
  
  # it { should validate_attachment_presence(:avatar) }
  
  it "is valid with a title and a link" do
    rotator = build(:rotator)
    expect(rotator).to be_valid
  end
end

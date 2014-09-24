require 'rails_helper'

RSpec.describe Rotator, :type => :model do
  it "is invalid without a title" do
    expect(Rotator.new(title: nil)).to have(1).errors_on(:title)
  end

  it "is invalid without a link" do
    expect(Rotator.new(link: nil)).to have(1).errors_on(:link)
  end
  
  it "is invalid wothout an attachment" do
  end

  it "is valid with a title and a link" do
    rotator = Rotator.new(
      title: 'rotator',
      link: 'test'
    )
    expect(rotator).to be_valid
  end
end

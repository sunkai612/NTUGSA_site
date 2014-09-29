# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :rotator do
    title "rotaotr"
    link "https://www.google.com"
    avatar { Rack::Test::UploadedFile.new('spec/uploads/test.jpg', 'image/jpeg') }
    factory :invalid_rotator do
      link nil
    end
  end
end

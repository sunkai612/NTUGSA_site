# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :rotator do
    title "rotaotr"
    link "https://www.google.com"
    # avatar { fixture_file_upload('spec/uploads/test.jpg', 'image/jpeg') }
  end
end

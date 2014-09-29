# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :administrator do
    email "root@gmail.com"
    password "11111111"
    password_confirmation "11111111"
  end
end

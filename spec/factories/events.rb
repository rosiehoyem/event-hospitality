# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :event do
    name "MyString"
    date_start "2013-11-05 22:28:04"
    date_end "2013-11-05 22:28:04"
    location "MyString"
  end
end

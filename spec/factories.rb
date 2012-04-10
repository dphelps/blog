FactoryGirl.define do
  factory :user do
    name                   "Prof D"
    email                  "dphelps@cmu.edu"
    password               "foobar"
    password_confirmation  "foobar"
  end
  
  sequence :email do |n|
    "person-#{n}@cmu.edu"
  end
end


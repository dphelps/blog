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
  
  FactoryGirl.define do 
    factory :micropost do
      content "Foo bar"
      association :user
    end
  end
end


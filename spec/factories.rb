
FactoryBot.define do
  factory :user do
    sequence :email do |n|
     "dummyEmail#{n}@gmail.com" 
    end
    password  {"secretPPassword"} 
    password_confirmation  {"secretPPassword"} 
  end

  factory :gram do
    message { "hello" }
    association :user
  end

  
end

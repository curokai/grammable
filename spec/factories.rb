
FactoryBot.define do
  factory :comment do
    
  end

  factory :user do
    sequence :email do |n|
     "dummyEmail#{n}@gmail.com" 
    end
    password  {"secretPPassword"} 
    password_confirmation  {"secretPPassword"} 
  end

  factory :gram do
    message { "hello" }
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'cat.jpg').to_s, 'image/jpg') }

    association :user
  end

  
end

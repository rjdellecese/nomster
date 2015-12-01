FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "me#{n}@gmail.com"
    end
    password "123password"
    password_confirmation "123password"
  end

  factory :place do
    name "place"
    address "address"
    description "description"
    association :user
  end

  factory :comment do
    message "message"
    rating "5_stars"
  end
end
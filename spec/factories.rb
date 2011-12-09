FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end


FactoryGirl.define do

  factory :user do
    email
    password "secret"
  end

  factory :destination do
    title 'The final destination X'
    description 'Lorem ipsum dolor sit amet'
    user
  end

  factory :review do
    destination
    content 'The nice place/movie.'
    user
  end
end



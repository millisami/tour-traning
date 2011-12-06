FactoryGirl.define do
  factory :destination do
    title 'The final destination X'
    description 'Lorem ipsum dolor sit amet'
  end

  factory :review do
    destination
    content 'The nice place/movie.'
  end
end



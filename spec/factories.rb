FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Rene #{n}" }
    sequence(:email) { |n| "person_#{n}@recipeapp.org"}
    password 'foobar'
    password_confirmation 'foobar'
  end
end
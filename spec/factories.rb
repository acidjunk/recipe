FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Rene #{n}" }
    sequence(:email) { |n| "person_#{n}@recipeapp.org"}
    password 'foobar'
    password_confirmation 'foobar'

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content 'Lorem ipsum'
    user
  end

  factory :recipe do
    name 'Nr 1'
    content 'Gerecht nummer 1.'
    user
  end

end
FactoryGirl.define do
  factory :user do
    name  'Rene Dohmen'
    email 'acidjunk@gmail.com'
    password 'foobar'
    password_confirmation 'foobar'
  end
end
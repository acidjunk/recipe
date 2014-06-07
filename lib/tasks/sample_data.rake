namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    admin = User.create!(name: 'Rene Dohmen',
                         email: 'acidjunk@gmail.com',
                         password: 'foobar',
                         password_confirmation: 'foobar',
                         admin: true)
    User.create!(name: 'Fake user',
                 email: 'example@receptenapp.org',
                 password: 'foobar',
                 password_confirmation: 'foobar')
    30.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@receptenapp.org"
      password  = 'password'
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end

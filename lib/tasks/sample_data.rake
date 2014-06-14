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

    #Get some sample data for microposts and recipes:
    users = User.all(limit: 6)
    50.times do
      name = Faker::Lorem.words(2).to_s
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
      users.each { |user| user.recipes.create!(name: name, content: content) }
    end
  end
end

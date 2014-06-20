namespace :db do
  desc 'Fill database with initial production data'
  task populate_production: :environment do
    admin = User.create!(name: 'Rene Dohmen',
                         email: 'acidjunk@gmail.com',
                         password: 'foobar',
                         password_confirmation: 'foobar',
                         admin: true)
  end
end
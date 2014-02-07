require 'faker'

10.times do
  User.create(name: Faker::Name.name,
              password: 'password',
              about: Faker::Lorem.paragraph)
end

15.times do
  Photo.create(title: Faker::Company.bs,
              description: Faker::Lorem.paragraph,
              img_file_name: '/public/image/cat.jpg')
end

10.times do |t|
  Album.create(title: Faker::Company.bs,
              user_id: t,
              photo_id: rand(1..15))
end
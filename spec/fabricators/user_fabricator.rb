Fabricator(:user) do
  email   { Faker::Internet.email }
  password { Faker::Lorem.words(3).join("") }
end

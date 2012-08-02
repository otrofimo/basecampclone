Fabricator(:task) do
  body         { Faker::HipsterIpsum.words(4).join(" ") }
  completed_at { (Time.now - rand(9999999)) if rand(2) == 0 }
  list_id      { sequence }
end

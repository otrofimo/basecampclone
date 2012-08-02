Fabricator(:list) do
  title   { Faker::HipsterIpsum.words(5).join(" ") }
  project_id { sequence }
end

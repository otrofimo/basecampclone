Fabricator(:list) do
  title   { Faker::HipsterIpsum.words(5).join(" ") }
  project_id { sequence }
end

Fabricator(:list_with_tasks, :from => :list) do
  tasks(:count => 3)
end

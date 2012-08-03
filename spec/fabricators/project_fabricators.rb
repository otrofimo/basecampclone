Fabricator(:project) do
	title { Faker::HipsterIpsum.words(4).join(" ") }
	clandestine { [true,false][rand(2)] }
	user_id { sequence }
end

Fabricator(:project_with_lists, :from => :project) do
	lists(:count => 3)
end

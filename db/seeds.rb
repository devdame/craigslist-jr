require 'faker'

10.times do
  Category.create({
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase
  })
end

Category.all.each do |cat|
	10.times do
	  Post.create({
	    name: Faker::Company.name,
	    description: Faker::Lorem.paragraph,
	    cost: rand(100..1000),
	    email: Faker::Internet.email,
	    category_id: cat.id,
      url: rand(1000000000000000)
	  })
  end
end

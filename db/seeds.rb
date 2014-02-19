require 'faker'

cats = ["Little Teacups", "Glasses", "Motorcycles", "Tiny Corvettes", "Dresses", "Leather Jackets", "Suspenders", "Snout Powder", "Paw Decals", "Brass Knuckles"]

(0..9).to_a.each do |i|
  Category.create({
    name: cats[i],
    description: Faker::Company.catch_phrase
  })
end

Category.all.each do |cat|
	10.times do
	  Post.create({
	    name: Faker::Company.catch_phrase,
	    description: Faker::Lorem.paragraph,
	    cost: rand(100..1000),
	    email: Faker::Internet.email,
	    category_id: cat.id,
      url: rand(1000000000000000)
	  })
  end
end

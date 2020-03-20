require 'faker'

25.times do |n|
	Category.create(name: Faker::Name.name)
endad
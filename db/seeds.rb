5.times do
	Article.create({
		title: Faker::Book.title,
		body: Faker::Lorem.sentence
	})
end

6.times do 
	Client.create({
		ip: Faker::Internet.ip_v4_address
	})
end

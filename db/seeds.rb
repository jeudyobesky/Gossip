randcity = 10

10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end


10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraphs,
    email: Faker::Internet.email,
    age: rand(15..46),
    city: City.find(randcity)
  )
  randcity -= 1
end

User.all.each do |user|
  20.times do |v|
    Potin.create(
      title: "Titre n° #{v}",
      content: Faker::Lorem.paragraphs,
      user: user
    )
  end
end

10.times do
  Tag.create(
    title: Faker::Book.genre
  )
end

20.times do
  TagPotin.create(
    tag: Tag.find(rand(1..10)),
    potin: Potin.find(rand(1..10))
  )
end 

20.times do
  Comment.create(
    content: Faker::Lorem.paragraphs,
    user: User.find(rand(1..10)),
    potin: Potin.find(rand(1..10))
  )
end


User.all.each do |user|
  5.times do
    Like.create(
    user: user,
    potin: Potin.find(rand(1..50)) 
    )
  end
  5.times do
    Like.create(
    user: user,
    comment: Comment.find(rand(1..20)) 
    )
  end
end


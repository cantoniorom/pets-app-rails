100.times do
    Pets.create(
       name: Faker::Dog.name ,
       breed: Faker::Dog.breed,
       gender: Faker::Dog.gender,
    )
end    
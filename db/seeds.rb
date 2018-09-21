
relationship_status = ['single', 'married', 'its_complicated', 'flying_solo']




100.times do


 name=Faker::Name.name

  Friend.create(
    name: name,
    age: Faker::Number.within(1..100),
    gender: Faker::Gender.binary_type),
    relationship_status: relationship_status.sample,
    avatar: Faker::Avatar.image(name, '100x400', 'png', 'set4')
  )
   end


10.times do
    Menu.create(
        item: Faker::Beer.name,
        description: Faker::Lebowski.quote,
        price: Faker::Commerce.price.to_f
    )
end
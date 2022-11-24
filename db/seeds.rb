# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create([
  {
    brand: "Mazda",
    model: "MX-5"
  },
  {
    brand: "Pagani",
    model: "Zonda"
  },
  {
    brand: "Tesla",
    model: "Model 3"
  },
  {
    brand: "Lotus",
    model: "Elise"
  }
])

p "Created 4 cars"

Car.find_by(model: "MX-5").variants = Variant.create([
  {
    variation: "soft-top",
    top_speed: 120,
    price: 5000
  },
  {
    variation: "hard-top",
    top_speed: 150,
    price: 7000
  }
])

Car.find_by(model: "Zonda").variants = Variant.create([
  {
    variation: "Extreme",
    top_speed: 350,
    price: 500000000
  },
  {
    variation: "Super-Extreme Max",
    top_speed: 469,
    price: 700000000
  }
])

p "Created variants for 2 cars"
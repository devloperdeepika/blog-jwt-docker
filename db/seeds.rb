# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.create!([{
    tittle: "Soul",
    instructions: "Pete Docter"
  },
  {
    tittle: "The Lord of the Rings: The Fellowship of the Ring",
    instructions: "Peter Jackson"
  },
  {
    tittle: "Terminator 2",
    instructions: "James Cameron"
  }])
  
  p "Created #{Recipe.count} movies"
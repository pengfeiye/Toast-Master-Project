# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Threew.destroy_all

Threew.create([
  {
  title: "Who?",
  details: "DETAILS HERE"
  },
  {
    title: "What?",
    details: "DETAILS HERE"
  },
  {
    title: "Why?",
    details: "DETAILS HERE"
  },
  {
    title: "How?",
    details: "DETAILS HERE"
  },
  ])

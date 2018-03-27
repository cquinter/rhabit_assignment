# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

dade = User.create!(
  first_name: "Dade",
  last_name: "Murphy",
  title: "CEO",
  manager: nil
)

kate = User.create!(
  first_name: "Kate",
  last_name: "Libby",
  title: "CTO"
)
kate.manager = dade
kate.save!

edward = User.create!(
  first_name: "Edward",
  last_name: "Vedder",
  title: "CFO"
)
edward.manager = dade
edward.save!

margo = User.create!(
  first_name: "Margo",
  last_name: "Wallace",
  title: "VP of Public Relations"
)
margo.manager = dade
margo.save!

eugene = User.create!(
  first_name: "Eugene",
  last_name: "Belfort",
  title: "VP of Engineering"
)
eugene.manager = kate
eugene.save!

richard = User.create!(
  first_name: "Richard",
  last_name: "Gill",
  title: "Public Relations Manager"
)
richard.manager = margo
richard.save!

emmanuel = User.create!(
  first_name: "Emmanuel",
  last_name: "Goldstein",
  title: "Lead Software Engineer"
)
emmanuel.manager = eugene
emmanuel.save!

paul = User.create!(
  first_name: "Paul",
  last_name: "Cook",
  title: "Software Engineer"
)
paul.manager = eugene
paul.save!

joey = User.create!(
  first_name: "Joey",
  last_name: "Pardella",
  title: "Junior Software Developer"
)
joey.manager = paul
joey.save!

agnes = User.create!(
  first_name: "Agnes",
  last_name: "Pardella",
  title: "Project Manager"
)
agnes.manager = margo
agnes.save!

ramon = User.create!(
  first_name: "Ramon",
  last_name: "Sanches",
  title: "Software Engineer"
)
ramon.manager = paul
ramon.save!

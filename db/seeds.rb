# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!(
  first_name: "Dade",
  last_name: "Murphy",
  title: "CEO",
  manager: nil
)

User.create!(
  first_name: "Kate",
  last_name: "Libby",
  title: "CTO",
  manager: "Dade Murphy"
)

User.create!(
  first_name: "Edward",
  last_name: "Vedder",
  title: "CFO",
  manager: "Dade Murphy"
)

User.create!(
  first_name: "Margo",
  last_name: "Wallace",
  title: "VP of Public Relations",
  manager: "Dade Murphy"
)

User.create!(
  first_name: "Eugene",
  last_name: "Belfort",
  title: "VP of Engineering",
  manager: "Kate Libby"
)

User.create!(
  first_name: "Richard",
  last_name: "Gill",
  title: "Public Relations Manager",
  manager: "Margo Wallace"
)

User.create!(
  first_name: "Emmanuel",
  last_name: "Goldstein",
  title: "Lead Software Engineer",
  manager: "Eugene Belfort"
)

User.create!(
  first_name: "Paul",
  last_name: "Cook",
  title: "Software Engineer",
  manager: "Eugene Belfort"
)

User.create!(
  first_name: "Joey",
  last_name: "Pardella",
  title: "Junior Software Developer",
  manager: "Paul Cook"
)

User.create!(
  first_name: "Agnes",
  last_name: "Pardella",
  title: "Project Manager",
  manager: "Margo Wallace"
)

User.create!(
  first_name: "Ramon",
  last_name: "Sanches",
  title: "Software Engineer",
  manager: "Paul Cook"
)

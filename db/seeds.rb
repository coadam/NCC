# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quotation.destroy_all

Quotation.create!([{
  content: "Hell is that state where one has ceased to hope."
},
{
  content: "To be or not to be."
},
{
  content: "Test Quote"
},
{
  content: "O, human love! thou spirit given, On Earth, of all we hope in Heaven!"
}
])

p "Created #{Quotation.count} quotations"

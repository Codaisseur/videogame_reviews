print "Seeding standard categories... "

Category.create([
  { name: "PC Games" },
  { name: "XBox Games" },
  { name: "Playstation Games" },
  { name: "Board Games" }
])

puts "seeded #{Category.count} categories!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do |i|
  Event.create(name: "Event #{i + 1}")
  3.times do |j|
    if Location.any?
      id = Location.last.id
    else
      id = 0
    end
    Location.create(
      name: "Location #{id + 1} belongs to Event #{i + 1}",
      tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
      event_id: i + 1
    )
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do |e|
  # create two events
  Event.create(name: "Event #{e + 1}")

  # for each event, create three locations
  3.times do |l|
    # grab the last id
    if Location.any?
      id = Location.last.id
    else # or initialize id to zero
      id = 0
    end

    # create the location with the appropriate id and event_id
    Location.create(
      name: "Location #{id + 1} belongs to Event #{e + 1}",
      tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
      event_id: e + 1
    )
  end

  # and create two participants
  2.times do |p|
    # grab the last id
    if Participant.any?
      id = Participant.last.id
    else # or initialize id to zero
      id = 0
    end

    # create the participant with the appropriate id and event_id
    Participant.create(
      email: "participant#{id + 1}@event#{e + 1}.com",
      event_id: e + 1
    )

    # update the join table, making sure we only 
    # associate participants and locations
    # that belong to the same event
    Location.where(event_id: e + 1).each do |l|
        l.participants << Participant.last
    end
  end
end
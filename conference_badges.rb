def badge_maker(name)
  "Hello, my name is #{name}."
end
def batch_badge_creator(attendees)
  attendees.collect{ |attendee|
    badge_maker(attendee)
  }
end
def assign_rooms(attendees)
  attendees.collect!.with_index{ |attendee,i|
    "Hello, #{attendee}! You'll be assigned to room #{i+1}!"
  }
end
def printer(attendees)
  badges = batch_badge_creator(attendees)
  assignments = assign_rooms(attendees)
  badges.each_with_index { |badge, i|
    puts badge
    puts assignments[i]
  }
end
require_relative( '../models/appointment.rb' )
require_relative( '../models/event.rb' )
require( 'pry-byebug' )

Appointment.delete_all
Event.delete_all


appointment1 = Appointment.new({ 'title' => 'Dentist' , 'start_time' => '2016-03-29 09:00:00' , 'end_time' => '2016-03-29 10:00:00', 'location' => 'Morningside', 'priority' => 2 })
appointment2 = Appointment.new({ 'title' => 'Meeting with VeryImportantPeople' , 'start_time' => '2016-03-30 14:00:00' , 'end_time' => '2016-03-30 16:00:00', 'location' => 'CodeBase', 'priority' => 5 })
appointment3 = Appointment.new({ 'title' => 'Presentation on Q1' , 'start_time' => '2016-03-30 09:30:00' , 'end_time' => '2016-03-30 10:00:00', 'location' => 'Glasgow Site', 'priority' => 3  })

appointment1.save
appointment2.save
appointment3.save

event1 = Event.new( { 'start_time' => '2016-04-01 09:00:00', 'end_time' => '2016-04-02 09:00:00', 'title' => 'JS Conference', 'location' => 'London' } )
event2 = Event.new( { 'start_time' => '2016-04-10 09:00:00', 'end_time' => '2016-04-12 09:00:00', 'title' => 'Charity Hackathon', 'location' => 'Glasgow' } )
event3 = Event.new( { 'start_time' => '2016-05-10 09:00:00', 'end_time' => '2016-05-17 09:00:00', 'title' => 'Annual Leave', 'location' => 'Bahamas' } )

event1.save
event2.save
event3.save

binding.pry
nil

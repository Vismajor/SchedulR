require( 'minitest/autorun' )
require( 'pry-byebug' )
require_relative( '../models/calendar' )
require_relative( '../models/appointment' )
require_relative( '../models/event' )

class TestCalendar > Minitest::test

  def setup
    appointment1 = Appointment.new({ 'title' => 'Dentist' , 'start_time' => '2016-03-29 09:00:00' , 'end_time' => '2016-03-29 10:00:00', 'location' => 'Morningside', 'priority' => 2 })
    appointment2 = Appointment.new({ 'title' => 'Meeting with VeryImportantPeople' , 'start_time' => '2016-03-30 14:00:00' , 'end_time' => '2016-03-30 16:00:00', 'location' => 'CodeBase', 'priority' => 5 })
    event1 = Event.new( { 'start_time' => '2016-04-01 09:00:00', 'end_time' => '2016-04-02 09:00:00', 'title' => 'JS Conference', 'location' => 'London' } )
    event2 = Event.new( { 'start_time' => '2016-05-01 09:00:00', 'end_time' => '2016-06-02 09:00:00', 'title' => 'Important Conference', 'location' => 'Edinburgh' } )
    options = {
      'appointments' => [ appointment1, appointment2 ],
      'events' => [ event1, event2 ]
    }
    @calendar = Calendar.new( options )
  end

  

end
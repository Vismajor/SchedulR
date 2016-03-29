require( 'minitest/autorun' )
require( 'pry-byebug' )
require_relative( '../models/calendar' )
require_relative( '../models/appointment' )
require_relative( '../models/event' )

class TestCalendar < MiniTest::Test

  def setup
    appointment1 = Appointment.new({ 'title' => 'Dentist' ,'start_date' => '2016-10-15', 'start_time' => '10:20:00', 'end_date' => '2016-10-15', 'end_time' => '11:00:00', 'location' => 'Morningside', 'priority' => 1  })
    appointment2 = Appointment.new({ 'title' => 'Meeting with the squad' ,'start_date' => '2004-12-10', 'start_time' => '20:00:00', 'end_date' => '2004-12-10', 'end_time' => '21:00:00', 'location' => 'Black Bull Pub', 'priority' => 5  })
    appointment3 = Appointment.new({ 'title' => 'Tango class' ,'start_date' => '2004-10-10', 'start_time' => '17:00:00', 'end_date' => '2004-10-10', 'end_time' => '18:30:00', 'location' => 'Community Centre', 'priority' => 4  })
    event1 = Event.new( { 'start_time' => '2016-04-01 09:00:00', 'end_time' => '2016-04-02 09:00:00', 'title' => 'JS Conference', 'location' => 'London' } )
    event2 = Event.new( { 'start_time' => '2016-05-01 09:00:00', 'end_time' => '2016-06-02 09:00:00', 'title' => 'Important Conference', 'location' => 'Edinburgh' } )
    options = {
      'appointments' => [ appointment1, appointment2, appointment3 ],
      'events' => [ event1, event2 ]
    }
    @calendar = Calendar.new( options )
  end

  def test_should_have_30_days()
    result = @calendar.days()
    assert_equal( 30, result.length )
  end

  def test_should_have_select_days()
    result = @calendar.days( DateTime.now, DateTime.now + 5 )
    assert_equal( 5, result.length )
  end

  def test_appointments()
    day = DateTime.parse('2016-10-15');
    result = @calendar.appointments( day );
    puts result.inspect
    assert_equal( 1, result.length );
  end

end
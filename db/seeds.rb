require( 'pry-byebug' )
require_relative( '../models/event' )

event1 = Event.new( { 'start_time' => '2016-04-01 09:00:00', 'end_time' => '2016-04-02 09:00:00', 'title' => 'JS Conference', 'location' => 'London' } )

binding.pry
nil

require( 'sinatra' )
require( 'pry-byebug' )
require_relative( 'models/calendar' )
require_relative( 'models/date_time' )
require_relative( 'controllers/appointments_controller' )
require_relative( 'controllers/events_controller' )


get '/' do
  options = {
    'appointments' => Appointment.all(),
    'events' => Event.all()
  }

  @calendar = Calendar.new( options )

  erb :"home"
end
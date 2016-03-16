require( 'sinatra' )
require( 'pry-byebug' )
require_relative('controllers/appointments_controller')
require_relative('controllers/events_controller')


get '/' do
  erb :"home"
end
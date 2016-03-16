require( 'sinatra' )
require( 'pry-byebug' )
require_relative('controllers/appointments_controller')


get '/' do
  erb :"home"
end
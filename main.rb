require( 'sinatra' )
require( 'pry-byebug' )

get '/' do
  erb :"home"
end
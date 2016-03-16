require('pry-byebug')
require_relative('../models/appointment.rb')

get '/appointments' do
  @appointments = Appointment.all
  erb :'appointments/index'
end

get '/appointments/:id' do
  @appointment = Appointment.find(params[:id])
  erb :'appointments/show'
end

get '/appointments/new' do
  erb :'appointments/new'
end

post '/appointments' do
end

post '/appointments/:id' do
end

post '/appointments/:id/delete' do
end

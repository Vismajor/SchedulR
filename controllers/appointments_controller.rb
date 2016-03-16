require('pry-byebug')
require_relative('../models/appointment.rb')

get '/appointments' do
  @appointments = Appointment.all
  erb :'appointments/index'
end

get '/appointments/new' do
  erb :'appointments/new'
end

get '/appointments/:id' do
  @appointment = Appointment.find(params[:id])
  erb :'appointments/show'
end

post '/appointments' do
  @appointment = Appointment.new(params)
  @appointment.save
end

post '/appointments/:id' do
  @appointment = Appointment.new(params)
  @appointment.update()
end

delete '/appointments/:id' do
end

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

get '/appointments/:id/edit' do
  @appointment = Appointment.find(params[:id])
  erb :'appointments/edit'
end

post '/appointments' do
  @appointment = Appointment.new(params)
  @appointment.save
  redirect to("/appointments")
end

post '/appointments/:id' do
  @appointment = Appointment.new(params)
  @appointment.update()
  redirect to("/appointments")
end

delete '/appointments/:id' do
  @appointment = Appointment.find(params[:id])
  @appointment.destroy(@appointment.id)
  redirect to("/appointments")
end

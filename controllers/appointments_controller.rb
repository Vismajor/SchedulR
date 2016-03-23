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
  binding.pry
  @appointment = Appointment.find(params[:id])
  erb :'appointments/show'
end

post '/appointments' do
  @starting_date = params[:starting_date]
  @starting_time = params[:starting_time]
  @ending_date = params[:ending_date]
  @ending_time = params[:ending_time]
  params['start_time'] = "#{@starting_date} #{@starting_time}:00"
  params['end_time'] = "#{@ending_date} #{@ending_time}:00"
  binding.pry
  @appointment = Appointment.new(params)
  @appointment.save
end

post '/appointments/:id' do
  @appointment = Appointment.new(params)
  @appointment.update()
end

delete '/appointments/:id' do
end

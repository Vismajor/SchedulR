require('pry-byebug')
require_relative('../models/event.rb')

get '/events' do
  @events = Event.all
  erb :'events/index'
end

get '/events/new' do
  erb :'events/new'
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'events/show'
end

get '/events/:id/edit' do
  @event = Event.find(params[:id])
  erb :'events/edit'
end

post '/events' do
  # Changing params to make use of user-friendly HTML forms
  # Move logic to the model
  @starting_date = params[:starting_date]
  @starting_time = params[:starting_time]
  @ending_date = params[:ending_date]
  @ending_time = params[:ending_time]
  params['start_time'] = "#{@starting_date} #{@starting_time}:00"
  params['end_time'] = "#{@ending_date} #{@ending_time}:00"
  @event = Event.new(params)
  @event.save
end

post '/events/:id' do
  # Move logic to model
  @starting_date = params[:starting_date]
  @starting_time = params[:starting_time]
  @ending_date = params[:ending_date]
  @ending_time = params[:ending_time]
  params['start_time'] = "#{@starting_date} #{@starting_time}"
  params['end_time'] = "#{@ending_date} #{@ending_time}"
  @event = Event.new(params)
  @event.update()
end

delete '/events/:id' do
  @event = Event.find(params[:id])
  @event.destroy(@event.id)
end

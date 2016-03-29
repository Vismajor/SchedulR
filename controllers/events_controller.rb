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
  @event = Event.new(params)
  @event.save
end

post '/events/:id' do
  @event = Event.new(params)
  @event.update()
end

delete '/events/:id' do
  @event = Event.find(params[:id])
  @event.destroy(@event.id)
end

require('pry-byebug')
require_relative('../models/event.rb')

get '/events' do
  @events = Event.all
  erb :'events/index'
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'events/show'
end

get '/events/new' do
  erb :'events/new'
end

post '/events' do
end

post '/events/:id' do
end

post '/events/:id/delete' do
end

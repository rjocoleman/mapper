$: << File.expand_path('../', __FILE__)
require 'sinatra'
require 'sinatra/activerecord'

autoload :Ping, 'app/models/ping'
set :views, settings.root + '/app/views'

post '/pings/:token' do
  content_type :json
  data = JSON.parse(request.body.read).merge(token: params[:token])
  Ping.create! data
end

get '/pings/:token' do
  @pings = Ping.where(token: params[:token])
  erb :pings, locals: { pings: @pings }
end

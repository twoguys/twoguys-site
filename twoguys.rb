require 'rubygems'
require 'sinatra'
require 'sass'

get '/' do
  @home = true
  haml :index
end

get '/design' do
  @design = true
  haml :design
end

get '/build' do
  @build = true
  haml :build
end

get '/deploy' do
  @deploy = true
  haml :deploy
end

get '/stylesheets/reset.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :reset
end

get '/stylesheets/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :styles
end
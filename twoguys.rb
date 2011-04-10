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
  @development = true
  haml :development
end

get '/deploy' do
  @posters = true
  haml :posters
end

get '/stylesheets/reset.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :reset
end

get '/stylesheets/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :styles
end
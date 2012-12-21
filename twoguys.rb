require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'compass'

configure do
  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

PROJECTS = %w{giftcardzen fastcustomer remotejobs maxrvu appmarkit crashbucket nezumi publishur wecreateideas schoolyardstewards fightklub openbrews}

get '/' do
  @page = "home"
  haml :index
end

get '/contact' do
  @page = "contact"
  haml :contact
end

get '/portfolio/:project' do
  pass unless PROJECTS.include?(params[:project])
  @page = "portfolio"
  @title = params[:project]
  haml params[:project].to_sym
end

# STYLESHEETS

get '/stylesheets/reset.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :reset
end

get '/stylesheets/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :styles
end
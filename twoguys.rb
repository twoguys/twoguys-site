require 'rubygems'
require 'sinatra'
require 'sass'

PROJECTS = %w{fastcustomer remotejobs maxrvu appmarkit crashbucket nezumi publishur wecreateideas schoolyardstewards fightklub openbrews}

get '/' do
  @home = true
  haml :index
end

get '/portfolio' do
  @portfolio = true
  haml :portfolio
end

get '/contact' do
  @contact = true
  haml :contact
end

# PROJECTS

get '/portfolio/:project' do
  pass unless PROJECTS.include?(params[:project])
  @portfolio = true
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
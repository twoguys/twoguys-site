require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

set :haml, :format => :html5

PROJECTS = %w{seesaw momeant giftcardzen fastcustomer remotejobs maxrvu appmarkit crashbucket nezumi publishur wecreateideas schoolyardstewards fightklub openbrews}

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

get '/books' do
  @full_title = "Becoming a Designer + Developer on the Web"
  @description = "This book will teach you the fundamentals of how to build on the web, while also showing you where to look for more."
  @page = "books"
  haml :books
end

# STYLESHEETS

get '/stylesheets/reset.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :reset
end

get '/stylesheets/styles.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :styles
end
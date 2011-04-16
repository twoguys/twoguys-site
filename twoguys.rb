require 'rubygems'
require 'sinatra'
require 'sass'

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

get '/portfolio/fastcustomer' do
  @portfolio = true
  haml :fastcustomer
end
get '/portfolio/remotejobs' do
  @portfolio = true
  haml :remotejobs
end
get '/portfolio/maxrvu' do
  @portfolio = true
  haml :maxrvu
end
get '/portfolio/crashbucket' do
  @portfolio = true
  haml :crashbucket
end
get '/portfolio/appmarkit' do
  @portfolio = true
  haml :appmarkit
end
get '/portfolio/nezumi' do
  @portfolio = true
  haml :nezumi
end
get '/portfolio/publishur' do
  @portfolio = true
  haml :publishur
end
get '/portfolio/wecreateideas' do
  @portfolio = true
  haml :wecreateideas
end
get '/portfolio/schoolyardstewards' do
  @portfolio = true
  haml :schoolyardstewards
end
get '/portfolio/openbrews' do
  @portfolio = true
  haml :openbrews
end
get '/portfolio/fightklub' do
  @portfolio = true
  haml :fightklub
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
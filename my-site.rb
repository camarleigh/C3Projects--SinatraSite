require "sinatra"
require "sinatra/reloader"
require './lib/marleigh'

class MySite < Sinatra::Base
  register Sinatra::Reloader


  get "/" do
    @marleigh = Marleigh::Page
    erb :index
  end

  get "/:name" do
    @name = Marleigh::Page.new(params[:name])
  end


  # get "/" do
  #   send_file'static/Home.html'
  # end

  # get "/about_me" do
  #   send_file'static/Me.html'
  # end

  # get "/current_projects" do
  #   send_file'static/Projects.html'
  # end

  # get "/blog" do
  #   send_file'static/Blog.html'
  # end

  # get "/espresso" do
  #   send_file 'static/Espresso.html'
  # end

end

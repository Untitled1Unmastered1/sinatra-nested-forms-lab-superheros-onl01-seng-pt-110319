require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end 
    
    post '/super_hero' do 
      @team = Team.new(params[:team])
      params[:team][:member].each do |deets|
        Member.new(deets)

      end 
      @superheroes = Member.all 
      
      
      erb :team 
    end 
  end 
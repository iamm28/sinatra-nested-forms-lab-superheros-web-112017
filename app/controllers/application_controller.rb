require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero #view with form
    end

    post "/teams" do
      @team = Team.new(params[:team])
      @member1 = Hero.new(params[:team][:members][0])
      @member2 = Hero.new(params[:team][:members][1])
      @member3 = Hero.new(params[:team][:members][2])
      erb :team #display submitted data
    end

end

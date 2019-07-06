require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero 
  end

  post '/teams' do
   # binding.pry
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @team_members = params[:team][:members]
    @super_hero_name = params[:hero][:name] 
    @super_hero_power = params[:hero][:power] 
    @super_hero_bio = params[:hero][:bio] 
    @click_button = params[:button][:submit]
      erb :team
    end
end

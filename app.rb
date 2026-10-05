require "sinatra/base"
require "sinatra/json"
require_relative "config/environment"

class App < Sinatra::Base
  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
  end

  get "/" do
    @users = User.all
    erb :index
  end

  get "/health" do
    json status: "ok"
  end
end

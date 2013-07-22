require 'sinatra'

class WebWriter < Sinatra::Base
  set :views, root
  set :public_folder, Proc.new { File.join(root, "public") }
  get '/' do
    erb :index
  end
end
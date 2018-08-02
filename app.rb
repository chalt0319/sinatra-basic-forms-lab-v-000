require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create_puppy' do
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :create_puppy
  end



end

require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    
    erb :user_input
  end
  
  post '/piglatinize' do
    binding.pry
    @string = self.piglatinize(params[:user_phrase])
    
    erb :result
  end
  
end
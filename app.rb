require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinized = PigLatinizer.new
    binding.pry
    @pig_latinized.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end

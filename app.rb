require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latinizer = PigLatinizer.new
    pig_latinizer.piglatinize(params[:user_phrase])
  end
end
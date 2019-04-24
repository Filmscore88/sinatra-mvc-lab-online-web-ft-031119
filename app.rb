require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @original_phrase=params[:user_phrase]
    @piglatinizer=PigLatinizer.new
    @pig_latined_phrase=@piglatinizer.to_pig_latin(@original_phrase)
    erb :final_view
  end

end

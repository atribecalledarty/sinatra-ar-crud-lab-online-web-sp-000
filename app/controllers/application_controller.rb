
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
  end
  
  get '/articles/new'
    erb :new
  end
  
  post '/articles'
    @article = Article.create(title: params["title"], content: params["content"])
    erb :index
  end
end

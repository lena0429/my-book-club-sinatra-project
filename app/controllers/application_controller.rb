require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'sinatra-auth-pt2'
  end

  get "/" do
    @review = Review.last
    id = @review.user_id
    @user = User.find(id)
    erb :index
  end

  helpers do
     
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end

end

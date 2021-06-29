require 'rack-flash'

class UsersController < ApplicationController
  use Rack::Flash
  
    get '/signup' do
        if session[:user_id] == nil
        erb :"/users/new"
        else 
            redirect "/reviews"
        end
    end

    post '/signup' do
      if logged_in?
        redirect "/reviews"
      end

      user = User.new(params)

      if user.username.blank? || user.email.blank? || user.password.blank? || User.find_by_email(params["email"])
        flag[:message] = "ALERT:Username, email, or password can not be blank. Please signup again."
        redirect "/signup"
      else
        user.save
        session[:user_id] = user.id
        redirect "/reviews"
      end
    end
    
    get '/login' do
      if logged_in?
        redirect "/reviews"
      end

      erb :"/users/login"
    end

    post '/login' do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/reviews"
        else
          flash[:message] = "User not found. Please login again."
            redirect "/login"
        end
    end

    get "/logout" do
        if session[:user_id] == nil
            redirect "/"
        else
            session.clear
            redirect "/login"
        end
    end
     
    get '/users/:slug' do 
      if !logged_in?
        flash[:message] = "Please login first."
        redirect "/login"
      end
      
        @user = User.find_by_slug(params[:slug])
        erb :"/users/show"
    end
    
end
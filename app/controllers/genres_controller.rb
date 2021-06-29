class GenresController < ApplicationController
    
    get '/genres' do
        if !logged_in?
            flash[:message] = "Please login first."
            redirect "/login"
          end

        @genres = Genre.all
        erb :"/genres/index"
    end


    get '/genres/:slug' do
        if !logged_in?
            flash[:message] = "Please login first."
            redirect "/login"
          end

        @genre = Genre.find_by_slug(params[:slug])
        erb :'/genres/show'
    end

end
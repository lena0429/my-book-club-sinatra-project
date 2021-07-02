class GenresController < ApplicationController
    
    get '/genres' do
       if_not_logged_in_then_redirect_to_login 

        @genres = Genre.all
        erb :"/genres/index"
    end


    get '/genres/:slug' do
      if_not_logged_in_then_redirect_to_login

        @genre = Genre.find_by_slug(params[:slug])
        erb :'/genres/show'
    end

end
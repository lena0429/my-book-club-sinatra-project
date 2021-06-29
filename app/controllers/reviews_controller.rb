require 'rack-flash'

class ReviewsController < ApplicationController
  use Rack::Flash

     get '/reviews' do
        if !logged_in?
          flash[:message] = "Please login first."
          redirect "/login"
        end

        @reviews = Review.all
        erb :"/reviews/index"
      end

     get '/reviews/new' do
        if !logged_in?
          flash[:message] = "Please login first."
          redirect "/login"
        end

        erb :"/reviews/new"
      end

      get '/reviews/:id' do
        if logged_in?
          @review = Review.find(params[:id])
          @review.user = current_user
          erb :"/reviews/show"
        else
          redirect "/login"
        end
      end

      get '/reviews/:id/edit' do
        if !logged_in?
          flash[:message] = "Please login first."
          redirect "/login"
        end

        @review = Review.find(params["id"])
        
        if @review.user == current_user
          erb :"/reviews/edit"
        else
          flash[:message] = "You are not allowed to edit other users' reviews! "
          redirect "/reviews"
        end
      end

      post '/reviews' do
        if !logged_in?
          flash[:message] = "Please login first."
          redirect "/login"
        end
        if !params[:book_title].empty? && !params[:rating].empty? && !params[:genres].empty? && !params[:content].empty? && !params[:thumbnail].empty?
          @review = Review.create(book_title: params[:book_title])
          @review.content = params[:content]
          @review.thumbnail = params[:thumbnail]
          @review.rating = params[:rating]
          @review.genre_ids = params[:genres]
          @review.user = current_user
          @review.save 
          flash[:message] = "Successfully created a review."
          redirect "/reviews"
        else
          redirect "/reviews/new"
        end
      end
        
        patch '/reviews/:id' do
          if logged_in?
            @review = Review.find(params[:id])
          end

          if params[:updated_book_title] != "" || params[:updated_content] != "" || params[:updated_thumbnail] != "" || params[:updated_rating] != ""
            @review.book_title = params[:updated_book_title]
            @review.content = params[:updated_content]
            @review.thumbnail = params[:updated_thumbnail]
            @review.rating = params[:updated_rating]
            @review.save
          end 
          redirect "/reviews/#{@review.id}"
        end

        delete '/reviews/:id' do
          if !logged_in?
            flash[:message] = "Please login first."
            redirect "/login"
          end

          @review = Review.find(params["id"])
          if logged_in? && @review.user == current_user
            @review.delete
            flash[:message] = "Review successfully deleted."
            redirect "/reviews"
          else
            flash[:message] = "You are not allowed to delete other users' reviews."
             redirect "/login"
          end

        end

end
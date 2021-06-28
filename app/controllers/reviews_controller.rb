class ReviewsController < ApplicationController

     get '/reviews' do
        @reviews = Review.all
        erb :"/reviews/index"
     end

     get '/reviews/new' do
        erb :"/reviews/new"
      end

      get '/reviews/:id' do
        @review = Review.find(params[:id])
        erb :"/reviews/show"
      end

      post '/reviews' do
        @review = Review.create(params)
        @review.save
        @review.id = params[:id] 
        redirect "/reviews/#{@review.id}"
      end

end
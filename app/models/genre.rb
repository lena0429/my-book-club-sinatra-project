require_relative './concerns/slugifiable.rb'

class Genre < ActiveRecord::Base
    has_many :review_genres
    has_many :reviews, through: :review_genres
    has_many :users, through: :reviews
  
    include Slugifiable::SlugMethod
    extend Slugifiable::FindBySlug

  end
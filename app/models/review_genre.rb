class ReviewGenre < ActiveRecord::Base
    belongs_to :genre
    belongs_to :review
end
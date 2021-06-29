class ReviewGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :review_genres do |t|
      t.integer :review_id
      t.integer :genre_id
     end
  end
end

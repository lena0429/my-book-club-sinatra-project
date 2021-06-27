class CreateReviews < ActiveRecord::Migration[6.0]
  def change
  create_table :reviews do |t|
    t.string :book_title
    t.string :content
    t.integer :user_id
    end
  end
end

class AddBookIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
    t.integer :user_id
    t.integer :book_id
    t.timestamps
    
    #add_column :favorites, :book_id, :integer
    end
  end
end
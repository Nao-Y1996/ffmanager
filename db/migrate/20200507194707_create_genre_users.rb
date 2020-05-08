class CreateGenreUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_users do |t|
    	t.integer :genre_id
    	t.integer :user_id

      	t.timestamps
    end
    add_index :genre_users, :genre_id
    add_index :genre_users, :user_id
    add_index :genre_users, [:genre_id, :user_id], unique: true
  end
end

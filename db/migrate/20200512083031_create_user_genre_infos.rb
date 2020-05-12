class CreateUserGenreInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_genre_infos do |t|
      t.integer :genre_id
      t.integer :user_id
      t.integer :priority
      t.boolean :is_valid, default: false

      t.timestamps
    end
    add_index :user_genre_infos, :genre_id
    add_index :user_genre_infos, :user_id
    add_index :user_genre_infos, [:genre_id, :user_id, :priority, :is_valid], unique: true, name: 'unique_index'
    #↑長すぎてエラーになるので, name: 'unique_index'を追加
  end
end

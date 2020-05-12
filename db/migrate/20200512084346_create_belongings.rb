class CreateBelongings < ActiveRecord::Migration[5.2]
  def change
    create_table :belongings do |t|
      t.integer :user_id, null: false
      t.integer :user_genre_infos_id, null: false

      t.timestamps
    end
  end
end

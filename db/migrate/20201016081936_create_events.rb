class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :end_at
      t.date :start_at

      t.timestamps
    end
  end
end

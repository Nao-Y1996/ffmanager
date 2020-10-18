class CreateEventParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_participations do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.boolean :is_event_admin, default: false

      t.timestamps
    end
  end
end

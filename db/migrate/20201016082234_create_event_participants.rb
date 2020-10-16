class CreateEventParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :event_participants do |t|
      t.integer :user_id
      t.integer :event_id
      t.boolean :is_event_admin

      t.timestamps
    end
  end
end

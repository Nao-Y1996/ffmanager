class AddUrlToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :url1, :text
    add_column :events, :url2, :text
    add_column :events, :url3, :text
    add_column :events, :url1_description, :string
    add_column :events, :url2_description, :string
    add_column :events, :url3_description, :string
  end
end

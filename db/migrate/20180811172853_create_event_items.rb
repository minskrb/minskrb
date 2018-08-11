class CreateEventItems < ActiveRecord::Migration[5.2]
  def change
    create_table :event_items do |t|
      t.string :title
      t.integer :item_type
      t.text :description
      t.string :speaker_name
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end

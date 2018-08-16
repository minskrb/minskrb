class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :youtube_link
      t.integer :videoable_id
      t.string  :videoable_type

      t.timestamps
    end

    add_index :videos, [:videoable_type, :videoable_id]
  end
end

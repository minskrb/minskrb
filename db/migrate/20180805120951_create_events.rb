class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :place_title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end

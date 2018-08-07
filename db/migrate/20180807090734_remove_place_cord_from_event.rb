class RemovePlaceCordFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :place_cord, :string
  end
end

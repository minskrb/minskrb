class CreateEventMediaPartners < ActiveRecord::Migration[5.2]
  def change
    create_table :event_media_partners do |t|
      t.belongs_to :event, index: true
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end

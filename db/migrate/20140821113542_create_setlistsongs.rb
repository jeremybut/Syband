class CreateSetlistsongs < ActiveRecord::Migration
  def change
    create_table :setlistsongs do |t|
      t.references :setlist, index: true
      t.references :song, index: true
      t.integer :position

      t.timestamps
    end
  end
end

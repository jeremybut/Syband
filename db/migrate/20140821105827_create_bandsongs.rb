class CreateBandsongs < ActiveRecord::Migration
  def change
    create_table :bandsongs do |t|
      t.references :band, index: true
      t.references :song, index: true

      t.timestamps
    end
  end
end

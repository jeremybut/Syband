class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :band, index: true
      t.references :setlist, index: true

      t.timestamps
    end
  end
end

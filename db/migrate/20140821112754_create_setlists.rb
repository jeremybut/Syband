class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

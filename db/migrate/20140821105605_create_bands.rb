class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.references :picture, index: true

      t.timestamps
    end
  end
end

class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :label
      t.integer :percentage

      t.timestamps
    end
  end
end

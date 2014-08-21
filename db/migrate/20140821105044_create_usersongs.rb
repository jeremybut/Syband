class CreateUsersongs < ActiveRecord::Migration
  def change
    create_table :usersongs do |t|
      t.references :user, index: true
      t.references :song, index: true
      t.references :status, index: true

      t.timestamps
    end
  end
end

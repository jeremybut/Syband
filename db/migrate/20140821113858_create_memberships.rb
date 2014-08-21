class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :user, index: true
      t.references :band, index: true
      t.boolean :user_asked
      t.boolean :band_asked
      t.boolean :is_admin

      t.timestamps
    end
  end
end

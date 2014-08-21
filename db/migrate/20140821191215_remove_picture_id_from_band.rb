class RemovePictureIdFromBand < ActiveRecord::Migration
  def change
    remove_column :bands, :picture_id, :integer
  end
end

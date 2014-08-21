class AddBandIdToSetlist < ActiveRecord::Migration
  def change
    add_reference :setlists, :band, index: true
  end
end

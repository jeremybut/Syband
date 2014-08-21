# == Schema Information
#
# Table name: setlists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  band_id     :integer
#

class Setlist < ActiveRecord::Base
  has_many :events
  belongs_to :band

  has_many :setlistsongs
  has_many :songs, through: :setlistsongs

  validates_presence_of :name

  rails_admin do
    label "Setlist" 
    label_plural "Setlists"
    navigation_label 'Entitées'
    
    list do
      field :name do
        label "Nom"
      end      
      field :description do
       	label "Description"
      end   
      field :songs do
        label "Musiques"
      end
    end
    
  #   edit do
  #   exclude_fields
  #     field :name do
  #       label "Nom"
  #     end      
  #     field :description do
  #      	label "Description"
  #     end              
  #   end    
  end  	
end

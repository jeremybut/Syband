# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  artist     :string(255)
#  lyrics     :text
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
    has_many :setlistsongs
    has_many :bandsongs
    has_many :usersongs

    validates_presence_of :title

    has_many :setlists, through: :setlistsongs
    has_many :bands, through: :bandsongs
    has_many :users, through: :usersongs


  rails_admin do
    label "Musique" 
    label_plural "Musiques"
    navigation_label 'Entitées'
    
    list do
      field :title do
        label "Titre"
      end            
      field :artist do
      	label "Artiste"
      end
      field :lyrics do
      	label "Paroles"
      end
    end
    
    edit do
    exclude_fields
      field :title do
        label "Titre"
      end            
      field :artist do
      	label "Artiste"
      end
      field :lyrics do
      	label "Paroles"
      end             
    end    
  end  	
end

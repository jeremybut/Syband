# == Schema Information
#
# Table name: bandsongs
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  song_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Bandsong < ActiveRecord::Base
  belongs_to :band
  belongs_to :song

  validates_presence_of :band_id
  validates_presence_of :song_id  

  rails_admin do
    label "Groupe - Musique (bandsong)" 
    label_plural "Groupes - Musiques (bandsong)"
    navigation_label 'Associations'
    
    list do
      field :band do
        label "Groupe"
      end
      field :song do
      	label "Musique"
  	  end            
    end
    
    edit do
    exclude_fields
      field :band do
        label "Groupe"
      end
      field :song do
      	label "Musique"
  	  end                   
    end    
  end  
end

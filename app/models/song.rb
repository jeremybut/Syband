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

# == Schema Information
#
# Table name: usersongs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  song_id    :integer
#  status_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Usersong < ActiveRecord::Base
  belongs_to :user
  belongs_to :song
  belongs_to :status

  rails_admin do
    label "Utilisateur - Musique (usersong)" 
    label_plural "Utilisateurs - Musiques (usersong)"
    navigation_label 'Associations'
    
    list do
      field :user do
        label "Utilisateur"
      end            
      field :song do
      	label "Musique"
      end
      field :status do
      	label "Statut"
      end
    end
    
    edit do
    exclude_fields
      field :user do
        label "Utilisateur"
      end            
      field :song do
      	label "Musique"
      end
      field :status do
      	label "Statut"
      end            
    end    
  end  	  
end

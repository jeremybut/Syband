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
  has_one :status

  validates :user_id, :song_id, :status_id, presence: true

  rails_admin do
    label "Utilisateur - Musique (usersong)" 
    label_plural "Utilisateurs - Musiques (usersong)"
    navigation_label 'Associations'
    
    list do
      # field :user do
      #   label "Utilisateur"
      # end            
      # field :song do
      # 	label "Musique"
      # end
      # field :status do
      # 	label "Statut"
      # end
    end
    
    edit do
    exclude_fields
    field :status_id do
      hide
    end
      # field :user do
      #   label "Utilisateur"
      # end            
      # field :song do
      # 	label "Musique"
      # end
      
      field :status do
      	label "Statut"
      end            
    end    
  end  	  
end

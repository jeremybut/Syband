# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  band_id    :integer
#  user_asked :boolean
#  band_asked :boolean
#  is_admin   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :band

  rails_admin do
    label "Utilisateur - Groupe (membership)" 
    label_plural "Utilisateurs - Groupes (membership)"
    navigation_label 'Associations'
    
    list do
      field :user do
        label "Utilisateur"
      end           
      field :band do
      	label "Groupe"
      end
      field :user_asked do
      	label "Demande d'un utilisateur"
      end
      field :band_asked do
      	label "Invitation par le groupe" 
      end
      field :is_admin do
      	label "Administrateur?"
      end
    end
    
    edit do
    exclude_fields
      field :user do
        label "Utilisateur"
      end           
      field :band do
      	label "Groupe"
      end
      field :user_asked do
      	label "Demande d'un utilisateur"
      end
      field :band_asked do
      	label "Invitation par le groupe" 
      end
      field :is_admin do
      	label "Administrateur?"
      end           
    end    
  end  
end

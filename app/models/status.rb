# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  percentage :integer
#  created_at :datetime
#  updated_at :datetime
#

class Status < ActiveRecord::Base
  belongs_to :usersongs

  validates_presence_of :label
  validates_presence_of :percentage

  rails_admin do
    label "Statut" 
    label_plural "Statuts"
    navigation_label 'Entitées'
    
    list do
      field :label do
        label "Nom"
      end            
      field :percentage do
      	label "Pourcentage"
      end
    end
    
    edit do
    exclude_fields
      field :label do
        label "Nom"
      end            
      field :percentage do
      	label "Pourcentage"
      end            
    end    
  end  		
end

# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  picture_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Band < ActiveRecord::Base
  belongs_to :picture

  rails_admin do
    label "Groupe" 
    label_plural "Groupes"
    navigation_label 'Entitées'
    
    list do
      field :picture do
        label "Image"
      end            
    end
    
    edit do
    exclude_fields
      field :picture do
        label "Image"
      end             
    end    
  end  
end

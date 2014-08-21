# == Schema Information
#
# Table name: setlists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Setlist < ActiveRecord::Base
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
    end
    
    edit do
    exclude_fields
      field :name do
        label "Nom"
      end      
      field :description do
       	label "Description"
      end              
    end    
  end  	
end

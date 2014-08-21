# == Schema Information
#
# Table name: pictures
#
#  id             :integer          not null, primary key
#  imageable_id   :integer
#  imageable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  rails_admin do
    label "Image" 
    label_plural "Images"
    navigation_label 'Entitées'
    
    list do
      field :imageable_id do
        label "Id image"
      end            
      field :imageable_type do
      	label "Image attaché à"
      end
    end
    
    edit do
    exclude_fields
      field :imageable_id do
        label "Id image"
      end            
      field :imageable_type do
      	label "Image attaché à"
      end           
    end    
  end    
end

# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  setlist_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
  belongs_to :band
  belongs_to :setlist

  rails_admin do
    label "Evènement" 
    label_plural "Evènements"
    navigation_label 'Entitées'
    
    list do
      field :band do
        label "Groupe"
      end
      field :setlist do
      	label "Setlist"
  	  end            
    end
    
    edit do
    exclude_fields
      field :band do
        label "Groupe"
      end
      field :setlist do
      	label "Setlist"
  	  end            
    end    
  end  
end

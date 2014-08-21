# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Band < ActiveRecord::Base

  has_one :picture, as: :imageable
  has_many :setlists

  has_many :memberships
  has_many :bandsongs

  has_many :users, through: :memberships
  has_many :songs, through: :bandsongs

  rails_admin do
    label "Groupe" 
    label_plural "Groupes"
    navigation_label 'Entitées'
    
    # list do
    #   field :picture_id do
    #     label "Image"
    #   end            
    # end
    
    # edit do
    # exclude_fields
    #   field :picture_id do
    #     label "Image"
    #   end             
    # end    
  end  
end

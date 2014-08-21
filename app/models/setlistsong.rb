# == Schema Information
#
# Table name: setlistsongs
#
#  id         :integer          not null, primary key
#  setlist_id :integer
#  song_id    :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Setlistsong < ActiveRecord::Base
  belongs_to :setlist
  belongs_to :song

  validates_presence_of :setlist_id
  validates_presence_of :song_id

  rails_admin do
    label "Setlist - Musique (setlistsong)" 
    label_plural "Setlists - Musiques (setlistsong)"
    navigation_label 'Associations'
    
    list do
      field :setlist do
        label "Setlist"
      end            
      field :song do
      	label "Musique"
      end
      field :position do
      	label "Position dans la setlist"
      end
    end
    
    edit do
    exclude_fields
      field :setlist do
        label "Setlist"
      end            
      field :song do
      	label "Musique"
      end
      field :position do
      	label "Position dans la setlist"
      end          
    end    
  end    
end

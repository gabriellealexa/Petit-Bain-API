class StarredOrganizer < ApplicationRecord

    belongs_to :organizer 
    belongs_to :user
    validates :organizer_id, uniqueness: true

end

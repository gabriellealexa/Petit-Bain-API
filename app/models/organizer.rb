class Organizer < ApplicationRecord

    has_many :organizer_resources
    has_many :resources, :through => :organizer_resources
    
end

class Resource < ApplicationRecord

    has_many :resource_needs
    has_many :needs, :through => :resource_needs
    has_many :organizer_resources
    has_many :organizers, :through => :organizer_resources
    belongs_to :scope

end

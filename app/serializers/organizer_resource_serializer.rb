class OrganizerResourceSerializer < ActiveModel::Serializer

    attributes :id, :organizer_id, :resource_id
    belongs_to :organizer
    belongs_to :resource 

  end
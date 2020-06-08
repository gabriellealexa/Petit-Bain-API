class ResourceSerializer < ActiveModel::Serializer
    attributes :title, :details, :link
    belongs_to :scope

    
    has_many :organizers, :through => :organizer_resources
    has_many :needs, :through => :resource_needs

  end
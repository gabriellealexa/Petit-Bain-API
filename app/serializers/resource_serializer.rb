class ResourceSerializer < ActiveModel::Serializer
    attributes :id, :title, :img, :details, :link, :organizers, :needs
    belongs_to :scope

    
    has_many :organizers, :through => :organizer_resources
    has_many :needs, :through => :resource_needs

  end
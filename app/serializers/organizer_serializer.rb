class OrganizerSerializer < ActiveModel::Serializer

    attributes :title, :about, :website, :email
    
    has_many :resource_needs 
    has_many :resources, :through => :resource_needs

  end
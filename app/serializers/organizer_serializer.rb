class OrganizerSerializer < ActiveModel::Serializer

    attributes :id, :title, :img, :about, :website, :email
    has_many :resources, :through => :organizer_resources

  end
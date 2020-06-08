class NeedSerializer < ActiveModel::Serializer
    attributes :title, :details
    has_many :resources, through: :resource_needs
    

  end
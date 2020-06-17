class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :avatar, :resources, :organizers
  end
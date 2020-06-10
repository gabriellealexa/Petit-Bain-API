class ScopeSerializer < ActiveModel::Serializer

    attributes :title, :details
    has_many :resources

  end
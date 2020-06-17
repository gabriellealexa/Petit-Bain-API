class StarredResource < ApplicationRecord

    belongs_to :user
    belongs_to :resource
    validates :resource_id, uniqueness: true

end

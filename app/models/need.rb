class Need < ApplicationRecord
    has_many :resources, through: :resource_needs
end

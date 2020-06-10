class User < ApplicationRecord
    has_many :blogs
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end

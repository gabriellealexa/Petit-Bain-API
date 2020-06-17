class User < ApplicationRecord
    has_many :starred_resources
    has_many :resources, :through => :starred_resources
    has_many :starred_organizers
    has_many :organizers, :through => :starred_organizers
    has_secure_password

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end

      
end

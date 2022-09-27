class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter


    def self.oldest
        order(:age).last
    end
end

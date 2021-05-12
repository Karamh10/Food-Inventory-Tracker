class Product < ApplicationRecord
    belongs_to :user
    #search bar
    def self.search(search)
        if search
            where(["product LIKE ?", "%#{search}%"])
        else
            all
        end
    end

end

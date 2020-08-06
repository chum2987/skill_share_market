class Category < ApplicationRecord
  has_many :skills
  has_ancestry
    
end

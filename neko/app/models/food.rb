class Food < ApplicationRecord
	validates :name, :description, :category, :price, :supportable, :presence => true
    validates :price, :numericality => true
    validates :name, :uniqueness => true
end

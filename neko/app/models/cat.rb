class Cat < ApplicationRecord
	validates :name, :description, :category, :price, :available, :presence => true
    validates :price, :numericality => true
    validates :name, :uniqueness => true
end

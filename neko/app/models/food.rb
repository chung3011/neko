class Food < ApplicationRecord
	has_many :food_images, dependent: :destroy

	scope :suggest_foods, ->{order(point: :desc).take(3)}
end

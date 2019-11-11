class Food < ApplicationRecord
	has_many :food_images, dependent: :destroy
	has_many :food_rates, dependent: :destroy

	scope :suggest_foods, ->{order(point: :desc).take(3)}
end

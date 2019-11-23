class Food < ApplicationRecord
	has_many :food_images, dependent: :destroy
	has_many :food_rates, dependent: :destroy
	has_many :food_bookings

  	default_scope { where(supportable: true) }

	scope :suggest_foods, ->{order(point: :desc).take(3)}
end

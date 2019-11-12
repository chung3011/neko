class Cat < ApplicationRecord
	has_many :cat_images, dependent: :destroy

	scope :suggest_cats, ->{order(point: :desc).take(3)}
end

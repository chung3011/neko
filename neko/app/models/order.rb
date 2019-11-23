class Order < ApplicationRecord
  belongs_to :user
  belongs_to :order_status
  has_many :food_bookings
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    food_bookings.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end

class Product < ApplicationRecord
  def is_discounted?
    price < 10
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price + tax
  end

  def friendly_created_at
    created_at.strftime('%m/%d/%Y')
  end
end


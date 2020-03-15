class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  # every object must have an ID for this to work:
  belongs_to :supplier 
  
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end  

  
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


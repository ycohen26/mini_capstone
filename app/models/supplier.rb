class Supplier < ApplicationRecord
  has_many :products 
  
  # def products
  #   Product.where(product_id: id)
  # end
end

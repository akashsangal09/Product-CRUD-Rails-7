class ProductDetail < ApplicationRecord
	
	validates :name, :price, :description, presence: true 
end

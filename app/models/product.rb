class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def availible?
    self.inventory != nil && self.inventory > 0 ? true : false
  end
  
end

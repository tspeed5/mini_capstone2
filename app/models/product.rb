class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      @price = price * 0.75
    end
  end

  def tax
    tax = price * 0.09
  end

  def total_with_tax
    total = price + tax
  end


end

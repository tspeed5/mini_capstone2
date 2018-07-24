class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :users, through: :carted_products

  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  
  validates :price, numericality: true

  # validates :price (not negative or 0, below 99999999.99)
  # validates :description (length 10 to 500 char)
  # validates

  def discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end



end

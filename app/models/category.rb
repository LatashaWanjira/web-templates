class Category < ApplicationRecord
  has_many :sites
  validates :category_name, :presence => true
end

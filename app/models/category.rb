class Category < ApplicationRecord::Base
    has_many :sites
    validates :category_name, :presence => :true
end

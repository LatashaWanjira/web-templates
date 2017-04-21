class Site < ApplicationRecord::Base
  belongs_to :category
  validates :site_name, :presence => :true
  validates :description, :presence => :true
end

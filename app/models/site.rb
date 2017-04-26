class Site < ApplicationRecord
  acts_as_taggable
  validates :site_name,		:presence => true
  validates :description,	:presence => true
end

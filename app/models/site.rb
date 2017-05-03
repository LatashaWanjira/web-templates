class Site < ApplicationRecord
  acts_as_taggable
  validates :site_name,		:presence => true
  validates :description,	:presence => true
  mount_uploaders :images, ImageUploader
  belongs_to :user
end

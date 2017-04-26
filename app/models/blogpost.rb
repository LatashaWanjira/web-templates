class Blogpost < ApplicationRecord
  validates :blog_title, 	:presence => true
  validates :body,			:presence => true
end

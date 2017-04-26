class Job < ApplicationRecord
  validates :job_title,		:presence => true
  validates :company_name,	:presence => true
  validates :description,	:presence => true
  validates :requirement,	:presence => true
  validates :email,			:presence => true

end

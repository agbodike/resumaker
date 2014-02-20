class Experience < ActiveRecord::Base
  belongs_to :resume

  validates :company, :job_title, :location, :description, :start_date, :end_date, presence: true
end

class Education < ActiveRecord::Base
  belongs_to :resume

  validates :university, :degree, :major, presence: true #TODO: need to add validation for start_year, end_year breaks tests for some reason
end

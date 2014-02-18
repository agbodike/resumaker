class Education < ActiveRecord::Base
  belongs_to :resume

  validates :month, :university, :degree, :major, presence: true
end

class Experience < ActiveRecord::Base
  belongs_to :resume
  has_many :experience_items, dependent: :destroy

  accepts_nested_attributes_for :experience_items,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :company, :job_title, :location, :description, :start_date, :end_date, presence: true
end

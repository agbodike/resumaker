class Education < ActiveRecord::Base
  belongs_to :resume

  validates :title, :name, presence: true
end

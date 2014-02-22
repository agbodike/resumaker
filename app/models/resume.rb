class Resume < ActiveRecord::Base
  has_many :educations, dependent: :destroy
  has_many :experiences, dependent: :destroy

  accepts_nested_attributes_for :educations, :experiences,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :title, :name, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
end

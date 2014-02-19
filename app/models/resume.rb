class Resume < ActiveRecord::Base
  has_many :educations, dependent: :destroy
  has_many :experiences, dependent: :destroy

  validates :title, :name, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
end

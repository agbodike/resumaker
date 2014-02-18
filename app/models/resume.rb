class Resume < ActiveRecord::Base
  validates :title, :name, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
end

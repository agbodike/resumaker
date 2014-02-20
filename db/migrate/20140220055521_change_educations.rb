class ChangeEducations < ActiveRecord::Migration
  def change
    remove_column :educations, :month
    add_column :educations, :start_year, :integer
    add_column :educations, :end_year, :integer
  end
end

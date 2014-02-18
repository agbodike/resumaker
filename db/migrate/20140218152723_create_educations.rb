class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.date :month
      t.string :university
      t.string :degree
      t.string :major
      t.belongs_to :resume, index: true

      t.timestamps
    end
  end
end

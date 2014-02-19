class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :job_title
      t.string :location
      t.string :description
      t.date :start_date
      t.date :end_date
      t.belongs_to :resume, index: true

      t.timestamps
    end
  end
end

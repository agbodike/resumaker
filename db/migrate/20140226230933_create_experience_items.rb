class CreateExperienceItems < ActiveRecord::Migration
  def change
    create_table :experience_items do |t|
      t.text :description
      t.belongs_to :experience, index: true

      t.timestamps
    end
  end
end

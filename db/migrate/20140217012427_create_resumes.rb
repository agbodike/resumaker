class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :objective
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end

class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.references :kind, foreign_key: true
      t.references :owner, foreign_key: true
      t.string :name
      t.integer :birth_day
      t.integer :birth_month
      t.integer :birth_year
      t.references :breed, foreign_key: true
      t.string :picture
      t.string :pet_registration_number

      t.timestamps
    end
  end
end

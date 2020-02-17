class CreateVaccines < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccines do |t|
      t.references :pet, foreign_key: true
      t.date :vaccine_date
      t.string :type_of_dose
      t.string :place

      t.timestamps
    end
  end
end

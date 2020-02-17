class CreateDewormings < ActiveRecord::Migration[5.2]
  def change
    create_table :dewormings do |t|
      t.references :pet, foreign_key: true
      t.date :deworming_date
      t.string :place

      t.timestamps
    end
  end
end

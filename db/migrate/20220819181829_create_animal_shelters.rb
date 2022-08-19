class CreateAnimalShelters < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_shelters do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :phone_number

      t.timestamps
    end
  end
end

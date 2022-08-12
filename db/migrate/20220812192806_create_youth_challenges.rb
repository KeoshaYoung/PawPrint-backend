class CreateYouthChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :youth_challenges do |t|
      t.string :name
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end

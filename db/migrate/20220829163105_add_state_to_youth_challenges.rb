class AddStateToYouthChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :youth_challenges, :state, :string
  end
end

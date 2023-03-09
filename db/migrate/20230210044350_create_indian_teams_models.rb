class CreateIndianTeamsModels < ActiveRecord::Migration[7.0]
  def change
    create_table :indian_teams_models do |t|
      t.string :name
      t.text :age
      t.string :role
      t.text :ranking

      t.timestamps
    end
  end
end

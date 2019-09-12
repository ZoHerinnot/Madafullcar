class CreateEnergies < ActiveRecord::Migration[5.2]
  def change
    create_table :energies do |t|
    	t.string :name
      t.timestamps
    end
  end
end

class CreatePremia < ActiveRecord::Migration[5.2]
  def change
    create_table :premia do |t|
      t.boolean :premium
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

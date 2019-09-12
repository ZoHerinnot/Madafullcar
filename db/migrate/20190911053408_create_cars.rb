class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
    	t.decimal :price
    	t.text :description
    	t.string :etat
    	t.integer :year
      t.integer :mileage
      t.integer :number_place
      t.string :climatisation
      t.string :transmission
      t.integer :telephone
    	t.belongs_to :mark,index: true
      t.belongs_to :model, index: true
      t.belongs_to :type, index: true
      t.belongs_to :energy, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end

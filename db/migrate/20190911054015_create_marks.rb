class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
    	t.string :name
      t.timestamps
    end
  end
end

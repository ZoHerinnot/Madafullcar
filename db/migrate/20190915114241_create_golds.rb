class CreateGolds < ActiveRecord::Migration[5.2]
  def change
    create_table :golds do |t|
      t.boolean :gold
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

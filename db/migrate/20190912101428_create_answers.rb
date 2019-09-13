class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
    	t.text :content

    	t.belongs_to :user
    	t.belongs_to :comment

      t.timestamps
    end
  end
end

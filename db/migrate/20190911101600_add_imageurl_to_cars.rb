class AddImageurlToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :image_url, :string
  end
end

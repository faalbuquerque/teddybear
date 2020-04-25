class AddImageToBear < ActiveRecord::Migration[6.0]
  def change
    add_column :bears, :image, :string
  end
end

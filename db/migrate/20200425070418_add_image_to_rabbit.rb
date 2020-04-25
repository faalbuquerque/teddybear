class AddImageToRabbit < ActiveRecord::Migration[6.0]
  def change
    add_column :rabbits, :image, :string
  end
end

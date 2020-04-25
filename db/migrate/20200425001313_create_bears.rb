class CreateBears < ActiveRecord::Migration[6.0]
  def change
    create_table :bears do |t|
      t.string :name
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end

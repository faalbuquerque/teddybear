class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end

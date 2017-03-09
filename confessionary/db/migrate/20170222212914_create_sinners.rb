class CreateSinners < ActiveRecord::Migration[5.0]
  def change
    create_table :sinners do |t|
      t.string :name
      t.text :sin

      t.timestamps
    end
  end
end

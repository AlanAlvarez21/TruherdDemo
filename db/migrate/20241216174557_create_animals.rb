class CreateAnimals < ActiveRecord::Migration[8.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :status
      t.references :herd, null: false, foreign_key: true

      t.timestamps
    end
  end
end

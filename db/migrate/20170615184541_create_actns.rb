class CreateActns < ActiveRecord::Migration[5.1]
  def change
    create_table :actns do |t|
      t.text :title
      t.text :description
      t.date :open
      t.date :closed
      t.integer :duration
      t.text :location

      t.timestamps
    end
  end
end

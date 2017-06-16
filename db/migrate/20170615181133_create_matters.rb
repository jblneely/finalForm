class CreateMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :matters do |t|
      t.text :title
      t.text :description
      t.date :open
      t.date :closed
      t.date :due

      t.timestamps
    end
  end
end

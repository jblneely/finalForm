class CreateActnsMatters < ActiveRecord::Migration[5.1]
  def change
    create_table :actns_matters do |t|
      t.references :actns, foreign_key: true
      t.references :matters, foreign_key: true

      t.timestamps
    end
  end
end

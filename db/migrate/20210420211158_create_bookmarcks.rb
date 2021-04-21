class CreateBookmarcks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarcks do |t|
      t.string :name
      t.string :direction
      t.references :category, null: false, foreign_key: true
      t.references :bookind, null: false, foreign_key: true

      t.timestamps
    end
  end
end

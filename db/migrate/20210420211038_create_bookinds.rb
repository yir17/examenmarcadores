class CreateBookinds < ActiveRecord::Migration[6.1]
  def change
    create_table :bookinds do |t|
      t.string :name

      t.timestamps
    end
  end
end

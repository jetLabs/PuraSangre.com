class CreateCaballos < ActiveRecord::Migration
  def change
    create_table :caballos do |t|
      t.string :sexo
      t.string :record
      t.integer :age
      t.string :nombre
      t.float :precio

      t.timestamps
    end
  end
end

class AddImagenToCaballo < ActiveRecord::Migration
  def change
    add_column :caballos, :imagen, :string
  end
end

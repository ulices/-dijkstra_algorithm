class CreateNodos < ActiveRecord::Migration
  def change
    create_table :nodos do |t|
      t.string  :name
      t.integer :distance

      t.timestamps
    end
  end
end

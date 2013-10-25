class CreateLinkNodos < ActiveRecord::Migration
  def change
    create_table :link_nodos do |t|
      t.integer :nodoA
      t.integer :nodoB
      t.integer :distance

      t.timestamps
    end
  end
end

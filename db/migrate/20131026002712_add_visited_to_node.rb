class AddVisitedToNode < ActiveRecord::Migration
  def change
    add_column :nodos, :visited, :string
  end
end

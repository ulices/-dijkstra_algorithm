class ChangeDistanceTypeInLinkNodo < ActiveRecord::Migration
  def change
    change_column :link_nodos, :distance, :float
  end
end

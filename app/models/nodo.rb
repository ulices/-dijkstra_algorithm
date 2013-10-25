class Nodo < ActiveRecord::Base

  def get_linked_nodes_distance
    LinkNodo.where(nodoA: id).map(&:distance)
  end

end

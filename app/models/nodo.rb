class Nodo < ActiveRecord::Base

  def get_linked_nodes_distance
    nodes = {}
    LinkNodo.where(nodoA: id).each do |lnode|
      nodes["nodo_#{lnode.nodoB}"] = lnode.distance
    end
    nodes
  end

end

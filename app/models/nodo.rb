class Nodo < ActiveRecord::Base

  def get_linked_nodes_distance
    nodes = {}
    LinkNodo.where(nodoA: id).each do |lnode|
      nodes[lnode.nodoB] = lnode.distance
    end
    nodes
  end

  def set_distance new_distance
    (new_distance < self.distance) &&
      (self.update_attribute :distance, new_distance)
  end

end

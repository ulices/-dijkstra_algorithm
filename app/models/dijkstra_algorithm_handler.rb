class DijkstraAlgorithmHandler

  def initialize(nodoA, nodoB)
    @nodoA = Nodo.find nodoA
    @nodoB = Nodo.find nodoB
  end

  def found_the_way(nodoA, nodoB)
    nodes = @nodoA.get_linked_nodes_distance
    shortes_distance nodes
  end

  def shortes_distance nodes
    nodes.min
  end

end

class DijkstraAlgorithmHandler
  #TODO, take it away from model, when fix the problem with rspec :(

  def initialize(nodoA, nodoB)
    @distance = 0
    @nodoA = Nodo.find nodoA
    @nodoB = Nodo.find nodoB
  end

  def found_the_way(nodoA, nodoB)
    nodes = nodoA.get_linked_nodes_distance
    near_node, distance = shortes_distance(nodes)[0],
                          shortes_distance(nodes)[1]
    @distance += distance
    (end_of_the_road?(near_node) && @distance) ||
      found_the_way(get_new_start_point(near_node), nodoB)
  end

  private

  def shortes_distance nodes
    nodes.min_by{|k,v| v }
  end

  def end_of_the_road? nodoB
    puts nodoB
    Nodo.where(name: nodoB).first == @nodoB
  end

  def get_new_start_point nodoA
    Nodo.where(name: nodoA).first
  end
end

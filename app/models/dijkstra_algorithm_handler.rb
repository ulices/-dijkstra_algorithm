class DijkstraAlgorithmHandler
  #TODO, take it away from model, when fix the problem with rspec :(

  def initialize(nodoA, nodoB)
    @distance = 0
    @nodoA = Nodo.find nodoA
    @nodoB = Nodo.find nodoB
    @visited_nodes = [nodoA.id]
  end

  def found_the_way
    puts 'strat to loking'
    visit_nodos @nodoA
    puts 'end to loking'
    Nodo.all.map(&:distance)
  end

  private

  def end_of_the_road? nodoB
    puts 'end of the road'
    nodoB.id == @nodoB.id
  end

  def get_new_start_point nodoA, new_start
    nodoA.visited = 'visited'
    Nodo.where(name: new_start).first
  end

  def visit_nodos(visiting_nodo, distance=0)
    puts 'visiting node'
    puts visiting_nodo.name
    puts distance.inspect
    #(end_of_the_road? visiting_nodo) && (return)
    nodes = visiting_nodo.get_linked_nodes_distance
    nodes = remove_visited_nodos(nodes)
    near_node = shortes_distance(nodes, distance)
  end

  def remove_visited_nodos nodes
    @visited_nodes.each{|n| nodes.delete(n) }
    nodes
  end

  def shortes_distance nodes, distance=0
    puts 'shortes_distance'
    unless nodes.empty?
      sorted_nodes = nodes.sort_by{|k,v| v }
      puts sorted_nodes.inspect
      @visited_nodes << sorted_nodes.first[0]
      sorted_nodes.each{|n| Nodo.find(n[0]).set_distance(n[1] + distance) }
      sorted_nodes.each do |n|
        nodo = Nodo.find n[0]
        visit_nodos(nodo, nodo.distance)
      end
    end
  end

end

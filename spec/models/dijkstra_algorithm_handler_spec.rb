require 'spec_helper'

describe DijkstraAlgorithmHandler do

  let(:nodoA){ Nodo.create(id: 1, name: 'node_2', distance: 0) }
  let(:nodo1){ Nodo.create(id: 2, name: 'node_2', distance: 7) }
  let(:nodo2){ Nodo.create(id: 3, name: 'node_3', distance: 9) }
  let(:nodo3){ Nodo.create(id: 6, name: 'node_6', distance: 14) }

  before do
    LinkNodo.create(nodoA: 1, nodoB: 2, distance: 7)
    LinkNodo.create(nodoA: 1, nodoB: 3, distance: 9)
    LinkNodo.create(nodoA: 1, nodoB: 6, distance: 14)
  end

  subject{ DijkstraAlgorithmHandler.new nodoA, nodo3 }

  describe '#found_the_way' do
    it 'returns the shortes way' do
      expect(subject.found_the_way(1, 6)).to eql(7)
    end
  end
end

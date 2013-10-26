require 'spec_helper'

describe DijkstraAlgorithmHandler do
  #TODO, change to infinity
  let(:infinito){ 1000000.0 }

  let!(:nodo1){ Nodo.create(id: 1, name: 'nodo_1', distance: 0) }
  let!(:nodo2){ Nodo.create(id: 2, name: 'nodo_2', distance: infinito) }
  let!(:nodo3){ Nodo.create(id: 3, name: 'nodo_3', distance: infinito) }
  let!(:nodo4){ Nodo.create(id: 4, name: 'nodo_4', distance: infinito) }
  let!(:nodo5){ Nodo.create(id: 5, name: 'nodo_5', distance: infinito) }
  let!(:nodo6){ Nodo.create(id: 6, name: 'nodo_6', distance: infinito) }

  before do
    LinkNodo.create(nodoA: 1, nodoB: 2, distance: 7)
    LinkNodo.create(nodoA: 1, nodoB: 3, distance: 9)
    LinkNodo.create(nodoA: 1, nodoB: 6, distance: 14)
    LinkNodo.create(nodoA: 2, nodoB: 3, distance: 10)
    LinkNodo.create(nodoA: 2, nodoB: 4, distance: 15)
    LinkNodo.create(nodoA: 3, nodoB: 4, distance: 11)
    LinkNodo.create(nodoA: 3, nodoB: 6, distance: 2)
    LinkNodo.create(nodoA: 4, nodoB: 5, distance: 6)
    LinkNodo.create(nodoA: 6, nodoB: 5, distance: 9)
  end

  subject{ DijkstraAlgorithmHandler.new nodo1, nodo5 }

  describe '#found_the_way' do
    it 'sets the correct node distance' do
      expect(subject.found_the_way).to eql([0, 7, 9, 20, 20, 11])
    end
  end
end

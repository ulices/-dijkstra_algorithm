require 'spec_helper'

describe Nodo do
  subject { Nodo.create id: 1, name: 'nodo_1', distance: 0 }

  let(:nodo1){ Nodo.create(id: 2, name: 'nodo_2', distance: 7) }
  let(:nodo2){ Nodo.create(id: 3, name: 'nodo_3', distance: 9) }
  let(:nodo3){ Nodo.create(id: 6, name: 'nodo_6', distance: 14) }

  before do
    LinkNodo.create(nodoA: 1, nodoB: 2, distance: 7)
    LinkNodo.create(nodoA: 1, nodoB: 3, distance: 9)
    LinkNodo.create(nodoA: 1, nodoB: 6, distance: 14)
  end

  describe '#get_linked_nodes_and_distance' do
    it 'returns all linked nodes' do
      expect(subject.get_linked_nodes_distance).to eql({ 'nodo_2' => 7, 'nodo_3' => 9, 'nodo_6' => 14})
    end
  end

end

# frozen_string_literal: true

require File.expand_path('lib/data')
require File.expand_path('lib/data/list')
require File.expand_path('lib/data/singly_linked_list')

List = Data::SinglyLinkedList
Node = Data::ListNode

RSpec.describe '链表' do
  let(:empty_list) { List.new }

  let(:list) do
    list = List.new
    list.header.next = Node.new(1)
    list
  end

  context 'Singly Linked List' do
    it 'new' do
      expect(empty_list.header.val).to eq nil
    end

    it 'is empty' do
      expect(empty_list.empty?).to eq true
    end

    it 'find val' do
      expect(list.find(1)).to eq 1
    end
  end
end

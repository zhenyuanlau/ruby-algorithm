# frozen_string_literal: true

ListNode = Struct.new(:val, :next)

TreeNode = Struct.new(:val, :left, :right)

class Array
  def to_list
    head = nil
    tmp = nil
    (0...size).each do |i|
      if i.zero?
        tmp = head = ListNode.new(self[i])
      else
        tmp.next = ListNode.new(self[i])
        tmp = tmp.next
      end
    end
    head
  end

  def to_cycle_list(pos)
    head = to_list
    p = q = head
    p = p.next until p.next.nil?
    pos.times do
      q = q.next
    end
    p.next = q
    head
  end
end

module List
  def node_at(head, pos)
    p = head
    pos.times do
      p = p.next
    end
    p
  end
  module_function :node_at
end

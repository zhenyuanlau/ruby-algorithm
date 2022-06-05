# frozen_string_literal: true

module Data
  # 单链表
  class SinglyLinkedList < List
    attr_reader :header

    def initialize
      super()
      @header = ListNode.new
    end

    def empty?
      header.next.nil?
    end

    def last?(index)
      p = header
      index.times do
        p = p.next
      end
      p.nil?
    end

    def find(val)
      p = header
      index = 0
      until p.nil? || p.val == val
        p = p.next
        index += 1
      end
      index
    end
  end
end

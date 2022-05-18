# frozen_string_literal: true

RSpec.describe '数据结构' do
  context '线性结构' do
    example '数组' do
      expect(Array.new([])).to eq []
    end

    example '字符串' do
      expect(String.new('')).to eq ''
    end

    example '队列' do
      queue = []
      3.times do |n|
        queue << (n + 1)
      end
      front = queue.shift

      expect(queue).to eq [2, 3]
      expect(front).to eq 1
    end

    example '栈' do
      stack = []
      3.times do |n|
        stack << (n + 1)
      end
      top = stack.pop
      expect(stack).to eq [1, 2]
      expect(top).to eq 3
    end

    example '哈希表' do
      h = { k: 'v' }
      expect(h[:k]).to eq 'v'
    end

    context '链表' do
      example '单链表' do
        node_class = Struct.new(:val, :next)
        n1 = node_class.new(1)
        n2 = node_class.new(2)
        n3 = node_class.new(3)
        n4 = node_class.new(4)
        n5 = node_class.new(5)
        n1.next = n2
        n2.next = n3
        n3.next = n4
        n4.next = n5
        nodes = []
        p = n1
        until p.nil?
          nodes << p.val
          p = p.next
        end
        expect(nodes).to eq (1..5).to_a
      end
    end
  end

  context '树形结构' do
    example '二叉树'
    example '二叉树搜索树'
    example 'N 叉树'
  end

  context '图形结构' do
    example '邻接表' do
      graph = {
        'A' => %w[B C],
        'B' => ['D'],
        'C' => ['D'],
        'D' => []
      }
      expect(graph).to eq graph
    end
  end
end

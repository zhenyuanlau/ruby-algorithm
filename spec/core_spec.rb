# frozen_string_literal: true

require_relative 'support/data_helper'
require_relative '../lib/core'
require 'pry'

RSpec.describe '核心' do
  # 逻辑结构 - 数据间的关系
  context '线型结构：双针模型' do
    context '数组' do
      example '[26] 删除有序数组中的重复项' do
        nums = [1, 1, 2]
        expected_nums = [1, 2]
        expect(remove_duplicates(nums)).to eq expected_nums.size
        expected_nums.each_with_index do |num, i|
          expect(nums[i]).to eq num
        end

        nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        expected_nums = [0, 1, 2, 3, 4]
        expect(remove_duplicates(nums)).to eq expected_nums.size
        expected_nums.each_with_index do |num, i|
          expect(nums[i]).to eq num
        end
      end
    end
    example '[141] 环形链表' do
      head = [3, 2, 0, -4].to_cycle_list(1)
      expect(cycle?(head)).to eq true

      head = [1, 2].to_cycle_list(0)
      expect(cycle?(head)).to eq true

      head = [1].to_list
      expect(cycle?(head)).to eq false
    end
  end

  context '树型结构：分治模型'

  context '图型结构：遍历模型'

  context '动态规划：备忘模型'
end

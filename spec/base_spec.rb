# frozen_string_literal: true

require_relative '../lib/base'

RSpec.describe '基础' do
  let(:sorted_array) { (0..5).to_a }
  let(:shuffled_array) { sorted_array.shuffle }

  context '排序' do
    example '快速排序'

    example '归并排序'

    example '选择排序'

    example '插入排序'

    example '冒泡排序'

    example '堆排序'

    example '桶排序'
  end

  context '查找' do
    example '二分查找' do
      target = 3
      expect(bsearch(sorted_array, target)).to eq sorted_array.index(target)
    end
  end
end

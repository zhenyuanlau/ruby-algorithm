# frozen_string_literal: true

module Data
  #
  # 形如 A₁,A₂,A₃,...,Aₙ 的表
  #
  # n := 表的大小
  # 空表 := 大小为 0 的表
  #
  # 对于非空表,
  # 第一个元素 A₁
  # 最后一个元素 Aₙ
  # 前驱元素
  # 后继元素
  #
  class List
    def make_empty; end

    def empty?; end

    def last?(index); end

    def find(val); end

    def delete(val); end

    def find_previous(index); end

    def insert(val, index); end

    def header; end

    def first; end

    def advance(index); end

    def next_element(index); end

    def previous_element(index); end

    def print_list; end

    def find_kth(index); end
  end
end

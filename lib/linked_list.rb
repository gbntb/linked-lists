# frozen_string_literal: true

require_relative 'node'

# Main class for our Linked List
class LinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    self.head = head
    self.tail = tail
  end

  def append(value)
    node = Node.new(value)
    if head.nil?
      self.head = node
    else
      tail.next_node = node
    end

    self.tail = node
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = head
    self.tail = node if head.nil?
    self.head = node
  end

  def size
    counter = 0
    current_node = head

    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end

    counter
  end

  def l_head
    return nil if head.nil?

    head.value
  end

  def l_tail
    return nil if tail.nil?

    tail.value
  end

  def at(index)
    return nil if index > size - 1
    return l_head if index.zero?

    current_node = head
    1.upto(index) do
      current_node = current_node.next_node
    end

    current_node.value
  end

  def pop
    return nil if head.nil?

    old_head = head
    self.head = old_head.next_node
    self.tail = nil if size.zero?
    old_head.next_node = nil
    old_head.value
  end

  def contains?(value)
    return false if size.zero?

    0.upto(size - 1) do |i|
      return true if at(i) == value
    end

    false
  end

  def index(value)
    return nil unless contains?(value)

    0.upto(size - 1) do |i|
      return i if at(i) == value
    end
  end

  def to_s
    return '' if size.zero?

    result = ''
    0.upto(size - 1) do |i|
      result.concat("( #{at(i)} ) -> ")
    end

    result.concat('nil')
  end

  def node_at(index)
    raise IndexError if index.negative? || index > size - 1
    return head if index.zero?

    current_node = head
    1.upto(index) do
      current_node = current_node.next_node
    end

    current_node
  end
end

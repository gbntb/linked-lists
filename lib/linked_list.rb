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
end

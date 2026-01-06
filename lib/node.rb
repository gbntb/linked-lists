# frozen_string_literal: true

# Simple class for our nodes
class Node
  attr_accessor :value, :next_node

  def initialize(value)
    self.value = value
    self.next_node = nil
  end
end

# frozen_string_literal: true

# Simple class for our nodes
class Node
  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next = nil
  end
end

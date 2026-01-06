# frozen_string_literal: true

# Simple class for our nodes
class Node
  attr_accessor :data, :next

  def initialize(data)
    self.data = data
    self.next = nil
  end
end

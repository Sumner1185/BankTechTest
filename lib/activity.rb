# frozen_string_literal: true

# class to keep track of all activity on account
class Activity
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_deposit(amount)
    @transactions.push(amount)
  end
end
